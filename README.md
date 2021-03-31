# README

* Description


* Ruby version: 2.7.2

* Configuration
```
$ git clone https://github.com/kalmai/app-gaslight.git
$ cd myapp/
$ bundler install
$ rails server
```
(http://localhost:3000/)

* Database creation: 
```
$ cd myapp/
$ bin/rails db:setup
```

* Deployment instructions:
```
$ cd myapp/
$ heroku login
$ heroku pg:reset
$ heroku rake db:create
```

* ...
