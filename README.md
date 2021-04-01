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
http://localhost:3000/ or simply https://app-gaslight.herokuapp.com/

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

* Feature Ideas
- last few articles that were updated
  - once this is implemented render a random article below the list
- random article button
- actually secure login
- actual css
- up/down vote for comments similar to amazon
- maybe images to go along with the articles

* With more time...
I would have really liked to add more css and tidy up the site with links to my socials similar to my other [site](https://kalmai.github.io/my-page/). The features listed above would have been a lot of fun to work on, however I ran short on time since rails isn't too friendly with WSL I discovered about half-way into the time I alotted for this project. I also would have appreciated going a little slower learning rails since there still seems to be a lot of magic that I haven't discovered yet.
