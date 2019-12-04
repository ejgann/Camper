Rails.application.routes.draw do

  resources :user_items, only: [:create, :delete]
  resources :destinations, only: [:index, :create, :show]
  resources :items, only: [:index, :show]
  resources :locations, only: [:index, :show]
  resources :users
  root 'application#home'
  
  # resources :location_items
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
end
