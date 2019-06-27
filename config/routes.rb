Rails.application.routes.draw do
  get 'mytrips/index'
  get 'plans/create'
  get 'posts/index'
  get '/users', to: redirect("/users/sign_up")
  post 'post/edit'
  resources :posts
  resources :plans
  devise_for :users
  get 'home/index'
  root 'home#index'
end