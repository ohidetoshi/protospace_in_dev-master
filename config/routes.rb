Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :prototypes do
    resources :comments, only: [:create, :update, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
