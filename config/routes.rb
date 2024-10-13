Rails.application.routes.draw do
  root 'customers#index'  # Set the root path to customers#index
  resources :customers, only: [:index, :create]  # Only include index and create routes
end
