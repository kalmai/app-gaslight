Rails.application.routes.draw do
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/welcome", to: "welcome#index"

  post "/users/logout", to: "users#logout"

  get "/users/login", to: "users#login"
  post "/users/login", to: "users#user_login"

  root 'articles#index'

  resources :users
  resources :articles do
    resources :comments
  end

end
