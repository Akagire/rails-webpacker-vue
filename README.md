# Rails5 + Webpacker + Vue Deployed Project

When you verify this project, please run following command,

```
docker-compose build
docker-compose up
docker-compose run web rails db:create
```

and access `http://localhost:3000`. you can see Rails initial screen.<br>
And access `http://localhost:3000/vue`, you can see Vue sample page.

Things you may want to cover:

* Ruby version

    2.5.1

* System dependencies

* Configuration

* Database creation

    MySql5.7

    Note: MySQL8 can't connect Rails default. Please see here
    https://stackoverflow.com/questions/49194719/authentication-plugin-caching-sha2-password-cannot-be-loaded

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
