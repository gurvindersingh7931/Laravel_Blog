<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $user = App\User::create([
        	'name' => 'Gurvinder Singh',
        	'email' => 'guribhullar8@gmail.com',
        	'password' => bcrypt('123456'),
            'admin' => 1
        ]);



        App\Profile :: create([
            'user_id' => $user->id,
            'avatar' => 'uploads/avatars/1.png',
            'about' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis temporibus alias maiores sit error, consequuntur non, laboriosam corporis laborum ipsam facilis at adipisci neque accusamus suscipit dolor est iusto qui!',
            'facebook' => 'facebbok.com',
            'youtube' => 'youtube.com'
        ]);
    }
}
