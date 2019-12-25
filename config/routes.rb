Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # User
  devise_for :users
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  # get 'users/:username' => 'users#show'
  # Tweet
  get 'home' => 'tweets#index'
  get 'tweets/show'
  get 'tweets/new'
  post 'tweets' => 'tweets#create'
  # follow
  resources :users do
    member do
     get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  # Teamroom
  get 'rooms/show'

end
