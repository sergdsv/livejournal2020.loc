<?php

namespace App;

use ScoutElastic\IndexConfigurator;
use ScoutElastic\Migratable;

class ArticleIndexConfigurator extends IndexConfigurator
{
    use Migratable;

    protected $name = 'article';

    /**
     * @var array
     */
    protected $settings = [

    ];
}
