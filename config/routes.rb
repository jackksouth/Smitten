Rails.application.routes.draw do
  resources :post
  resources :posts
  resources :comment
  resources :comments
  
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  resources :users, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end