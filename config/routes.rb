Rails.application.routes.draw do
  devise_for :users
  get 'homes/about'
  root to: "homes#top"
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
end
