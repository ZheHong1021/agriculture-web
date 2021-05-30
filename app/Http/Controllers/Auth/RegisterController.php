<?php

namespace App\Http\Controllers\Auth;

use Hash;
use Session;
use Auth;
use Gate;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Registered;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/admin/user';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'acc' => 'required|string|max:255|unique:users',
            'authority' => 'required|between: 1,3',
            'password' => 'required|string|min:6|confirmed',
        ],[
            'required'    => '此欄位為必填',
            'unique'    => '已經有重複的帳號',
            'string'    => '請輸入文字',
            'max' => '輸入超出限定範圍，最大 :max 字元',
            'between'      => '請選擇有效的選項',
            'min'      => '最少要 :min 字元',
            'confirmed'      => '兩次輸入的內容不符',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'acc' => $data['acc'],
            'authority' => $data['authority'],
            'password' => Hash::make($data['password']),
        ]);
    }

    public function showRegistrationForm()
    {
        //權限判斷
        if(Gate::denies('create', User::class)){
            abort(403);
        }

        return view('admin.users.create');
    }

    public function register(Request $request)
    {
        //權限判斷
        if(Gate::denies('create', User::class)){
            abort(403);
        }
        
        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        //$this->guard()->login($user);
        Session::flash('successMessage', $user->acc.' 新增成功');
        return $this->registered($request, $user)
                        ?: redirect(route('admin.user.index'));
    }
}
