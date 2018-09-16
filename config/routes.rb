Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: "top#index"
end
