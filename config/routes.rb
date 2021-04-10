Rails.application.routes.draw do
  resources :matches
  resources :demos
  resources :likes
  resources :users
  
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  get '/usersfiltered', to: 'users#filter'

  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
end
