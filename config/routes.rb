Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  
  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:show, :create, :edit, :update, :index, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
