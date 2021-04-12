Rails.application.routes.draw do
  
  
  resources :messages

  resources :matches
  resources :likes
  resources :demos
  resources :users 
  
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  post 'rails/active_storage/direct_upload', to: 'direct_upload#create'
end
