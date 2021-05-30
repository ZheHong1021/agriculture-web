<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\User' => 'App\Policies\UserPolicy',
        'App\Info' => 'App\Policies\ReportPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('manage-user', function ($user) {
            //只有最高管理者可以管理使用者
            if($user->isSuperAdmin() || $user->isAdmin()){
                return True;
            }else{
                return False;
            }
        });

        Gate::define('manage-report', function ($user) {
            //一般或最高管理者皆可以管理報告
            if($user->isSuperAdmin() || $user->isAdmin()){
                return True;
            }else{
                return False;
            }
        });

        Gate::define('reset-password', function ($user) {
            //只有最高管理者可以重設密碼
            return $user->isSuperAdmin();
        });
    }
}
