Rails.application.routes.draw do
  
  
  resources :favorite_tracks
  resources :messages

  resources :matches
  resources :likes
  resources :demos
  resources :users 

  resources :tracks do
    collection do
      get :top_100
      get :random
      get :search
    end
  end
  
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
end
