<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class GettingAllArticlesTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function testGettingAllArticles()
    {
        $response = $this->json('GET', '/api/articles');
        $response->assertStatus(200);

        $response->assertJsonStructure(
            [
                [
                    'id',
                    'title',
                    'body',
                    'created_at',
                    'updated_at'
                ]
            ]
        );
    }
}
