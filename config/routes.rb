Rails.application.routes.draw do
  resources :messages
  resources :conversations
  resources :matches
  resources :demos
  resources :likes
  
  resources :users do
    resources :matches
  end
  
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
end
