<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Faker\Factory as Faker;
use Tests\TestCase;

class CreateArticleTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function testCreateArticle()
    {
        $data = [
            'title' => "New Title",
            'body' => "This is a body",
        ];
        $response = $this->json('POST', '/api/articles',$data);
        $response->assertStatus(201);
    }
}
