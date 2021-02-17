Rails.application.routes.draw do
  get 'dashboard/show'
  devise_for :users
  resources :friends
  root 'home#index'
  #root 'friends#index'
  get 'home/index'
  get 'home/about'

  get '/logout' => 'logout#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Auth0
  get 'auth/auth0/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'
  get 'dashboard' => 'dashboard#show'
end
