<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>
 
 # Getting started
 
 ## Installation
 
 Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/5.4/installation#installation)
 
 
 Clone the repository
 
     git clone git@github.com:sergdsv/livejournal2020.loc.git
 
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
 
 Start the local development server
 
     php artisan serve
 
 You can now access the server at http://localhost:8000

## Endpoints:

### GET Multiple Articles:

`GET /api/articles`

Example request body:
```JSON
{
  "articles":{
    "id": "1",
    "title": "jakejake",
    "body": "text"
  }
}
```
Required fields: `id`, `title`, `body`

### GET Single Article:

`GET /api/article/{id}`

Example request body:
```JSON
{
  "articles":{
    "id": "1",
    "title": "jakejake",
    "body": "text"
  }
}
```
Required fields: `id`, `title`, `body`

### DELETE Article:

`DELETE /api/article/{id}`

### POST Create Article:

`POST /api/article/`

{
  "article": {
    "title": "How to train your dragon",
    "body": "You have to believe",
  }
}

### PUT Update Article:

`PUT /api/article/{id}`

{
  "article": {
    "title": "How to train your dragon",
    "body": "You have to believe",
  }
}


