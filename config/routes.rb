Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # User
  devise_for :users
  get 'users/index'
  get 'users/show'
  get 'users/show/:username' => 'users#show'
  # Tweet
  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/new'
  post 'tweets' => 'tweets#create'
  # Teamroom
  get 'rooms/show'
end
