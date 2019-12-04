<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class GettingOneArticleTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function testGettingOneArticle()
    {
        $response = $this->json('GET', '/api/articles/1');
        $response->assertStatus(200);

        $response->assertJsonStructure(
            [
                    'id',
                    'title',
                    'body',
                    'created_at',
                    'updated_at'
            ]
        );
    }
}
