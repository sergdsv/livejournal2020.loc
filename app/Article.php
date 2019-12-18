<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use ScoutElastic\Searchable;

class Article extends Model
{
    use Searchable;

    protected $indexConfigurator = ArticleIndexConfigurator::class;

    protected $fillable = [
        'title',
        'body'
    ];

    public function comments(){
        return $this->hasMany(Comment::class, 'post_id','id');
    }

//    protected $searchRules = [
//        //
//    ];

    /**
     * @var array
     */
        protected $mapping = [
            'properties' => [
                'title' => [
                    'type' => 'text',
                ],
                'body' => [
                    'type' => 'text',
                ],
            ]
        ];
}
