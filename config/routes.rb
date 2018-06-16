Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'categories#index'
  resources :resources, only: [:new, :create, :edit, :update]
  resources :categories, only: [:index]
end
