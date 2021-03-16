<?php

use App\User;
use App\UserProfile;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = array(
            [
                'email' => 'admin@expressmyview.com',
                'password' => '(VVjG\zS2h![JM.v',
                'name' => 'Admin',
                'user_type' => 'admin',
                'phone' => '',
                'ip' => '::1',
                'status' => 1,
            ],
            /*[
                'email' => 'user1@email.com',
                'password' => '123456',
                'user_type' => 'user',
                'phone' => '+919293949596',
                'status' => 1,
            ],*/
            /*[
                'email' => 'user2@email.com',
                'password' => '12345678',
                'user_type' => 'user',
                'phone' => '+919293949596',
                'status' => 1,
            ],
            [
                'email' => 'user3@email.com',
                'password' => '12345678',
                'user_type' => 'user',
                'phone' => '+919293949596',
                'status' => 1,
            ],
            [
                'email' => 'user4@email.com',
                'password' => '12345678',
                'user_type' => 'user',
                'phone' => '+919293949596',
                'status' => 1,
            ],*/
        );

        foreach ($users as $user) {
            $newUser = User::create([
                'email' => $user['email'],
                'email_verified_at' => Carbon::now()->addMinutes(5)->format('Y-m-d H:i:s'),
                'password' => Hash::make($user['password']),
                'ip' => $user['ip'],
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s'),
            ]);

            $Profile = new UserProfile();
            $Profile->phone = $user['phone'];
            $newUser->profile()->save($Profile);
        }
    }
}
