Rails.application.routes.draw do
  devise_for :users

  resources :game, only: %i[index show] do
    collection do
      get "search"
    end
  end
  resources :cart, only: %i[create destroy]
  resources :publisher, only: %i[index show]
  resources :platform, only: %i[index show]
  resources :genre, only: %i[index show]
  get "welcome/index"
  root "welcome#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope "/checkout" do
    post "create", to: "checkout#create", as: "checkout_create"
    get "success", to: "checkout#success", as: "checkout_success"
    get "cancel", to: "checkout#cancel", as: "checkout_cancel"
    get "view", to: "checkout#view", as: "checkout_view"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
