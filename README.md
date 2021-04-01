# README

* Description
This application uses rails to CRUD articles, users, and comments hosted on heroku. The purpose was to expand slightly on the [getting-started-project](https://guides.rubyonrails.org/getting_started.html) to gain a basic understanding of rails.


* Ruby version: 2.7.2

* Configuration
```
$ git clone https://github.com/kalmai/app-gaslight.git
$ cd myapp/
$ bundler install
$ rails server
```
http://localhost:3000/ or simply https://app-gaslight.herokuapp.com/

* Database creation: 
```
$ cd myapp/
$ bin/rails db:setup
```

* Deployment instructions:
```
$ cd app-gaslight/
$ heroku login
$ heroku pg:reset
$ heroku rake db:create
$ heroku open
```

* With more time...
I would have really liked to add more css and tidy up the site with links to my socials similar to my other [site](https://kalmai.github.io/my-page/). The features listed below would have been a lot of fun to work on, however I ran short on time since rails isn't too friendly with WSL I discovered about half-way into the time I alotted for this project. I also would have appreciated going a little slower learning rails since there still seems to be a lot of magic that I haven't discovered yet. Also, I would have liked to ensure that not only can not-logged-in-users cannot CRUD, but that they cannot sent requests through the URL since currently the links are not rendered if they are not logged in.

  * Feature Ideas
  - last few articles that were updated
    - once this is implemented render a random article below the list
  - random article button
  - actually secure login
  - actual css
  - up/down vote for comments similar to amazon
  - maybe images to go along with the articles

