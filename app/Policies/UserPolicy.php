<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class UserPolicy
{
    use HandlesAuthorization;

    public function index(User $user)
    {
        return $user->isSuperAdmin();
    }

    /**
     * Determine whether the user can view the user.
     *
     * @param  \App\User  $user
     * @param  \App\User  $user
     * @return mixed
     */
    public function view(User $user, User $viewuser)
    {
        //
    }

    /**
     * Determine whether the user can create users.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->isSuperAdmin();
    }

    /**
     * Determine whether the user can update the user.
     *
     * @param  \App\User  $user
     * @param  \App\User  $user
     * @return mixed
     */
    public function update(User $currentUser, User $updateUser)
    {
        if($currentUser->isSuperAdmin() && !$updateUser->isSuperAdmin() ){
            return True;
        }else{
            return False;
        }
    }

    /**
     * Determine whether the user can delete the user.
     *
     * @param  \App\User  $user
     * @param  \App\User  $user
     * @return mixed
     */
    public function delete(User $currentUser, User $deleteUser)
    {
        if($currentUser->isSuperAdmin() && !$deleteUser->isSuperAdmin() ){
            return True;
        }else{
            return False;
        }
    }

    public function resetPassword(User $user)
    {
        if($user->isSuperAdmin()){
            return True;
        }else{
            return False;
        }
    }
}
