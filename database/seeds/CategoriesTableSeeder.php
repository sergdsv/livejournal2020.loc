<?php

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('App\Category');

        for ($i = 1; $i < 5; $i++ ) {
            DB::table('categories')->insert([
                'title' => $faker->sentence(1),
                'created_at' => \Carbon\Carbon::now(),
                'Updated_at' => \Carbon\Carbon::now(),
            ]);

        }

    }
}
