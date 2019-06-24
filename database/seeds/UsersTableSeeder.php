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
        DB::table('users')->insert([
            'name' => 'Manoj kumar',
            'email' => 'mkgarwa@gmail.com',
            'password' => bcrypt('12345678'),
        ]);
        DB::table('users')->insert([
            'name' => 'Divya Singh',
            'email' => 'sdivya@gmail.com',
            'password' => bcrypt('12345678'),
        ]);
    }
}
