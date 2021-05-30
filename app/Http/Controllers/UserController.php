<?php
/*
|--------------------------------------------------------------------------
| UserController
|--------------------------------------------------------------------------
|
| 負責使用者的新增/讀取/刪除/修改與權限維護
*/

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use Gate;
use Hash;
use Session;
use DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;

class UserController extends Controller
{
    public function __construct()
	{

		
	}

	public function index(){
		
		//權限判斷
		if(Gate::denies('index', User::class)){
			abort(403);
		}

		$users = User::paginate(10);
		return view('admin.users.index',['users' => $users]);
	}

	/*
	public function create(){
		return view('admin.users.create');
	}

	
	public function store(Request $request){
		
		$input = $request->all();
    	$rules = ['acc'=>'required', 'passwd'=>'required', 'passwdck'=>'required'];
	    $validator = Validator::make($input, $rules);
	    if($validator->passes()){
	    	$acc_check = User::where('acc', $request->input('acc'))->first();
	    	if(isset($acc_check->id)){
	    		Session::flash('acc_check', '該帳號已經有人使用!');
	    		return redirect('admin/user/create')->withInput();
	    	}
	    	if( $request->input('authority') != '2' && $request->input('authority') != '3' ){
	    		Session::flash('authority_check', '請設定正確的權限!');
	    		return redirect('admin/user/create')->withInput();
	    	}
	    	if( $request->input('passwd') != $request->input('passwdck') ){
	    		Session::flash('passwd_check', '密碼不符!');
	    		return redirect('admin/user/create')->withInput();
	    	}
	    	$user = new User();
	    	$user->acc = $request->input('acc');
	    	$user->password = Hash::make($request->input('passwd'));
	    	$user->authority = $request->input('authority');
	    	
	    	$user->save();
	    	Session::flash('message', '新增成功');
	    	return redirect('admin/user');
	    	
	    	return 'pass';
	    }
		return redirect('admin/user/create')->withInput()->withErrors($validator);
	}
	*/
	
	public function edit($id){
		//找不到會拋出404
		$user = User::findOrFail($id);

		//權限判斷
		if(Gate::denies('update', $user)){
			abort(403);
		}

		return view('admin.users.edit',['user' => $user]);
	}
	public function update($id, Request $request){
		
    	$user = User::findOrFail($id);

    	//權限判斷
		if(Gate::denies('update', $user)){
			abort(403);
		}

		$input = $request->all();
		$rules = [
			"authority" => "required|in:2,3,4"
		];
		$message = [
			"required" => "此欄位為必填",
			"in" => "請輸入有效的數值"
		];

		$validator = Validator::make($input, $rules, $message);

		if( !$validator->passes() ){
    		return redirect()->route('admin.user.edit', ["id" => $id])->withInput()->withErrors($validator);
    	}

    	//開始更新資料
    	DB::beginTransaction();
	    try {
	    	$user->authority = $request->input('authority');
	    	$user->save();

	    	DB::commit();
	    	Session::flash('successMessage', $request->input('acc').' 權限修改成功');
	    } catch (Exception $e) {
	    	DB::rollback();
	    	Session::flash('errorMessage', $request->input('acc').' 權限修改失敗 請稍後再試或聯絡網站管理員');
	    }
    	return redirect()->route('admin.user.index'); 
		
	}
	public function delete($id){
		
		$user = User::findOrFail($id);

		//權限判斷
		if(Gate::denies('delete', $user)){
			abort(403);
		}

		$acc = $user->acc;

		//開始更新資料
    	DB::beginTransaction();
	    try {
			$user->delete();

			DB::commit();
			Session::flash('successMessage', $acc.' 刪除成功');
		} catch (Exception $e) {
	    	DB::rollback();
	    	Session::flash('errorMessage', $acc.' 刪除失敗，請稍後再試或聯絡網站管理員');
	    }	
	    return redirect()->route('admin.user.index'); 
	}

	public function showPasswordForm(){
		return view('admin.users.password');
	}

	public function passwordUpdate(Request $request){
		$input = $request->all();
		$rules = [
			'oldPassword' => 'required|string',
			'password' => 'required|string|min:6|confirmed'
		];
		$message = [
			'required'    => '此欄位為必填',
            'string'    => '請輸入文字',
            'min'      => '最少要 :min 字元',
            'confirmed'      => '兩次輸入的內容不符',
		];
		$validator = Validator::make($input, $rules, $message);
		if(!$validator->passes()){
			return redirect()->route('admin.user.password.show')->withErrors($validator);
		}

		if (Hash::check($request->input('oldPassword'), Auth::user()->password)) {
			$newPassword = Hash::make($request->input('password'));
			$user = Auth::user();
			$user->password = $newPassword;
			$user->save();
			Auth::logout();
			Session::flash('successMessage', '密碼修改成功，請重新登入');
  			return redirect()->route('login.show');
		}else{
			$validator->errors()->add('oldPassword', '密碼錯誤');
			return redirect()->route('admin.user.password.show')->withErrors($validator);
		}
	}

	public function passwordReset($id){

		$user = User::findOrFail($id);

		//權限判斷
		if(Gate::denies('resetPassword', User::class)){
			abort(403);
		}

		$newPassword = Hash::make($user->acc.'@nkust');
		$user->password = $newPassword;
		$user->save();
		Session::flash('successMessage', "$user->acc 密碼修改成功，已更新為: 帳號@nkust");
		return redirect()->route('admin.user.index');
	}
}
