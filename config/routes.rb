Rails.application.routes.draw do

  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :update, :index]
  
  get 'homes/top'
  get 'homes/about' => 'homes#about', as:"about"
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
