Rails.application.routes.draw do
  get 'posts/index'
  get '/users', to: redirect("/users/sign_up")
  resources :posts
  devise_for :users
  get 'home/index'
  root 'home#index'
end