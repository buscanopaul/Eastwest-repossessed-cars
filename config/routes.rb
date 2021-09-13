Rails.application.routes.draw do
  resources :types
  resources :brands
  resources :cars do
    resources :offers
  end

  resources :offers
  devise_for :users
  # get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :users, except: :create
  post "create_user" => "users#create", as: :create_user
end
