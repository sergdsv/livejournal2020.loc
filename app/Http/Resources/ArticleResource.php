<?php

namespace App\Http\Resources;

use App\Article;
use App\Category;
use App\Comment;
use Illuminate\Http\Resources\Json\JsonResource;

class ArticleResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'body' => $this->body,
            'category' => new CategoryResource(Category::find($this->category_id)),
            'created_at' => (string) $this->created_at,
            'updated_at' => (string) $this->updated_at,
            'comments' => CommentResource::collection(Comment::where(['parent_id' => 0])
                                                    ->where('post_id', $this->id)
                                                    ->get()),
        ];
    }
}
