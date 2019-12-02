Rails.application.routes.draw do
  resources :user_items, only: [:create, :delete]
  # resources :location_items
  resources :destinations, only: [:index, :create, :show]
  resources :items, only: [:index, :show]
  resources :locations, only: [:index, :show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
