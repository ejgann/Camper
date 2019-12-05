Rails.application.routes.draw do

  resources :user_items, only: [:index, :create, :delete]
  resources :destinations, only: [:index, :create, :show]
  resources :items, only: [:index, :show]
  resources :locations, only: [:index, :show]
  resources :users
  root 'application#home'
  
  get '/welcome', to: 'users#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: "sessions#logout"

end
