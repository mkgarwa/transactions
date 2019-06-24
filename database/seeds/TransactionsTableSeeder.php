<?php

use Illuminate\Database\Seeder;

class TransactionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\Transactions::class, 50)->create([
            'user_id' => \App\Models\User::all()->random()->id,
        ]);
    }
}
