Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'  }
  root to: 'home#index'
  
  resources :property_types, only: [:show, :new, :create]
  resources :properties, only: [:show, :new, :create]
end
