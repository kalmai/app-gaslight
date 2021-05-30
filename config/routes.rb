Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/welcome", to: "welcome#index"

  post "/users/logout", to: "users#logout"

  get "/users/login", to: "users#login"
  post "/users/login", to: "users#user_login"

  root 'articles#index'
  get "articles/random", to: "articles#random"

  #post "comments/upvote/:user_id/:comment", to: "comments#upvote"
  post "articles/:article_id/comments/:id/upvote", to: "comments#upvote"
  post "articles/:article_id/comments/:id/downvote", to: "comments#downvote"



  resources :users
  resources :articles do
    resources :comments
  end

end
