<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"><img width="140" src="https://vuejs.org/images/logo.png" alt="Vue logo"></p>
 
 # Getting started
 
 ## Installation
 
 Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/5.4/installation#installation)
 
 
 Clone the repository
 
     git clone https://github.com/sergdsv/livejournal2020.loc.git
 
 Switch to the repo folder
 
     cd livejournal2020.loc
 
 Install all the dependencies using composer
 
     composer install
 
 Copy the example env file and make the required configuration changes in the .env file
 
     cp .env.example .env
 
 Generate a new application key
 
     php artisan key:generate
     
 Run the database migrations (**Set the database connection in .env before migrating**)
 
     php artisan migrate
     
 Run the database seed to table articles
     
     php artisan db:seed --class=ArticlesTableSeeder
 
 The Bootstrap and Vue scaffolding provided by Laravel is located in the laravel/ui Composer package, which may be installed using Composer:
 
    composer require laravel/ui --dev
    
 Once the laravel/ui package has been installed, you may install the frontend scaffolding using the ui Artisan command:
 
    php artisan ui bootstrap
    php artisan ui vue

After installing the laravel/ui Composer package and generating the frontend scaffolding, Laravel's package.json file will include the bootstrap package to help you get started prototyping your application's frontend using Bootstrap. However, feel free to add or remove packages from the package.json file as needed for your own application. You are not required to use the Bootstrap framework to build your Laravel application - it is provided as a good starting point for those who choose to use it.

Before compiling your CSS, install your project's frontend dependencies using the Node package manager (NPM):

    npm install
    
Once the dependencies have been installed using npm install, you can compile your SASS files to plain CSS using Laravel Mix. The npm run dev command will process the instructions in your webpack.mix.js file. Typically, your compiled CSS will be placed in the public/css directory:

    npm run dev
 
Start the local development server
    
    php artisan serve
 
 You can now access the server at http://localhost:8000

## Endpoints:

### GET Multiple Articles:

`GET /api/articles`

Example request body:
```JSON
[
    {
        "id": 91,
        "title": "Labore unde magni totam distinctio ab officia quia.",
        "body": "Esse accusantium ut ut incidunt. Est libero pariatur magnam qui omnis voluptate aspernatur.",
        "created_at": "2019-11-28 13:28:23",
        "updated_at": "2019-11-29 13:25:12"
    },
    {
        "id": 90,
        "title": "At omnis praesentium enim dolorem.",
        "body": "Et molestias aut laboriosam itaque consequatur. Rerum quaerat ut autem commodi.",
        "created_at": "2019-11-28 13:28:23",
        "updated_at": "2019-11-28 13:28:23"
    }
]
```
Required fields: `id`, `title`, `body`, `created_at`, `updated_at`

### GET Single Article:

`GET /api/article/{id}`

Example request body:
```JSON
{
    "id": 5,
    "title": "Sit doloribus eius laudantium sint ut quis accusantium.",
    "body": "Dignissimos quis atque voluptatibus. Dicta adipisci autem tempora aspernatur magni facilis quidem.",
    "created_at": "2019-11-27 10:38:21",
    "updated_at": "2019-11-27 10:38:21"
}
```
Required fields: `id`, `title`, `body`, `created_at`, `updated_at`

### DELETE Article:

`DELETE /api/article/{id}`

### POST Create Article:

`POST /api/article/`
```JSON
{
    "title": "Labore unde magni totam distinctio ab officia quia.",
    "body": "Esse accusantium ut ut incidunt. Est libero pariatur magnam qui omnis voluptate aspernatur.",
}
```
Required fields: `title`, `body`

### PUT Update Article:

`PUT /api/article/{id}`
```JSON
{
    "title": "Labore unde magni totam distinctio ab officia quia.",
    "body": "Esse accusantium ut ut incidunt. Est libero pariatur magnam qui omnis voluptate aspernatur.",
}
```
