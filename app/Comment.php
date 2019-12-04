<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{

    protected $with = ['replies'];


    public function replies()
    {
        return $this->hasMany(Comment::class, 'parent_id','id');
    }
}
