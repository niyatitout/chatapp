# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  resources :rooms do
    resources :messages, only: [:create]
  end
  
  root "rooms#index"
end