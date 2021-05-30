<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* 登入 */
//Route::get('login', 'LoginController@show')->name('login.show');
//Route::post('login', 'LoginController@login')->name('login.login');
Route::get('login', 'Auth\LoginController@showLoginForm')->name('login.show');
Route::post('login', 'Auth\LoginController@login')->name('login.login');
Route::get('logout', 'Auth\LoginController@logout')->name('login.logout');


/* 需要登入後才能檢視 */
Route::middleware(['auth'])->group(function () {

	/* 檢測報告管理 */
	Route::get('/admin', 'ReportController@index')->name('admin.index');
	Route::get('/admin/report', 'ReportController@index')->name('admin.report.index');
	Route::get('/admin/report/create', 'ReportController@create')->name('admin.report.create');
	Route::get('/admin/report/upload', 'ReportController@upload')->name('admin.report.upload');
	Route::post('/admin/report/upload', 'ReportController@storeFile')->name('admin.report.storeFile');
	Route::post('/admin/report', 'ReportController@store')->name('admin.report.store');
	Route::get('/admin/report/{id}/edit', 'ReportController@edit')->name('admin.report.edit')->where('id', '[0-9]+');
	Route::patch('/admin/report/{id}', 'ReportController@update')->name('admin.report.update')->where('id', '[0-9]+');
	Route::delete('/admin/report/{id}', 'ReportController@destroy')->name('admin.report.destroy')->where('id', '[0-9]+');

	/* 平均測值管理 */
	Route::get('/admin/report/average', 'AverageController@index')->name('admin.report.average.index');
	Route::post('/admin/report/average', 'AverageController@store')->name('admin.report.average.store');

	/* 使用者管理 */
	Route::get('/admin/user', 'UserController@index')->name('admin.user.index');
	//Route::get('/admin/user/create', 'UserController@create')->name('admin.user.create');
	Route::get('/admin/user/create', 'Auth\RegisterController@showRegistrationForm')->name('admin.user.create');
	//Route::post('/admin/user', 'UserController@store')->name('admin.user.store');
	Route::post('/admin/user', 'Auth\RegisterController@register')->name('admin.user.store');
	Route::get('/admin/user/{id}/edit', 'UserController@edit')->name('admin.user.edit')->where('id', '[0-9]+');
	Route::patch('/admin/user/{id}/edit', 'UserController@update')->name('admin.user.update')->where('id', '[0-9]+');
	Route::delete('/admin/user/{id}', 'UserController@delete')->name('admin.user.delete')->where('id', '[0-9]+');
	
	Route::get('/admin/user/password/{id}/reset', 'UserController@passwordReset')->name('admin.user.password.reset')->where('id', '[0-9]+');

	/* 檢視各項檢測報告 */
	Route::get('/', 'ReadController@index')->name('home.index');
	Route::get('/report', 'ReadController@index')->name('report.index');
	Route::post('/api/report/{info_id}', 'ReadController@getReportById')->name('api.report.show')->where('info_id', '[0-9]+');
	Route::post('/api/report', 'ReadController@getReport')->name('api.report.index');

	/* 修改密碼 */
	Route::get('/user/password', 'UserController@showPasswordForm')->name('admin.user.password.show');
	Route::patch('/user/password', 'UserController@passwordUpdate')->name('admin.user.password.update');
});	