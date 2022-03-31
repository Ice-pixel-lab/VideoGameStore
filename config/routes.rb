Rails.application.routes.draw do
  resources :game, only: %i[index show]
  resources :publisher, only: %i[index show]
  resources :platform, only: %i[index show]
  resources :genre, only: %i[index show]
  get "welcome/index"
  root "welcome#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
