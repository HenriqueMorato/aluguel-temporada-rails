Rails.application.routes.draw do

  root to: 'home#index'
  
  resources :property_types, only: [:show, :new, :create]
  resources :properties, only: [:show, :new, :create]
end
