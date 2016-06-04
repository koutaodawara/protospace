Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :users, only: [:show, :edit, :update]

   namespace :products do
    resources :rankings, only: :index
    resources :newests, only: :index
  end
  
  resources :products do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
end
