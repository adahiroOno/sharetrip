Rails.application.routes.draw do
  get 'posts/index'
  resources :posts
  devise_for :users
  get 'home/index'
  root 'home#index'
end