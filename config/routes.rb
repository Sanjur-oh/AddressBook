Rails.application.routes.draw do
  resources :phone_numbers
  resources :emails
  resources :addresses
  resources :users
  resources :posts
  get "/hello", to: "hello#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
