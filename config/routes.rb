Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # User
  devise_for :users
  resources :users, :only => [:index, :show, :update]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  # Tweet
  root to: 'tweets#index'
  resources :tweets
  # follow
  resources :users do
    member do
     get :following, :followers, :user_tweets
    end
  end
  resources :relationships, only: [:create, :destroy]
  get "following_tweets" => "tweets#following_tweets"
  # Teamroom
  get 'rooms/show'

end
