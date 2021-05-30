<?php

namespace App\Policies;

use App\User;
use App\Info;
use Illuminate\Auth\Access\HandlesAuthorization;

class ReportPolicy
{
    use HandlesAuthorization;

    public function index(User $user)
    {
        if($user->isSuperAdmin() || $user->isAdmin()){
            return True;
        }else{
            return False;
        }
    }

    /**
     * Determine whether the user can view the Info.
     *
     * @param  \App\User  $user
     * @param  \App\Info  $Info
     * @return mixed
     */
    public function view(User $user, Info $info)
    {
        //
    }

    /**
     * Determine whether the user can create Infos.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        if($user->isSuperAdmin() || $user->isAdmin()){
            return True;
        }else{
            return False;
        }
    }

    /**
     * Determine whether the user can update the Info.
     *
     * @param  \App\User  $user
     * @param  \App\Info  $info
     * @return mixed
     */
    public function update(User $user)
    {
        if($user->isSuperAdmin() || $user->isAdmin()){
            return True;
        }else{
            return False;
        }
    }

    /**
     * Determine whether the user can delete the Info.
     *
     * @param  \App\User  $user
     * @param  \App\Info  $Info
     * @return mixed
     */
    public function delete(User $user)
    {
        if($user->isSuperAdmin() || $user->isAdmin()){
            return True;
        }else{
            return False;
        }
    }
}
