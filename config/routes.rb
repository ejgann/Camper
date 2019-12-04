Rails.application.routes.draw do

  resources :user_items, only: [:index, :create, :delete]
  resources :destinations, only: [:index, :create, :show]
  resources :items, only: [:index, :show]
  resources :locations, only: [:index, :show]
  resources :users
  root 'application#home'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: "sessions#logout"
end
