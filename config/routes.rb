Rails.application.routes.draw do
  get 'friend_requests/new'
  get 'friend_request/new'
  get 'users/index'
  resource :dashboard
  resources :friend_requests
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "dashboards#show"
end
