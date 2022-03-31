Rails.application.routes.draw do
  get 'game/index'
  get 'game/show'
  get "welcome/index"
  root "welcome#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
