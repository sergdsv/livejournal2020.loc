<?php

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class CommentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('App\Comment');

        for ($i = 1; $i < 20; $i++ ) {
            DB::table('comments')->insert([
                'user_id' => 1,
                'post_id' => 1,
                'parent_id' => rand(1, 20),
                'body' => $faker->paragraph(),
                'created_at' => \Carbon\Carbon::now(),
                'Updated_at' => \Carbon\Carbon::now(),
            ]);
        }
    }
}
