Rails.application.routes.draw do
  devise_for :users
  get 'homes/about'
  root to: "homes#top"
end
