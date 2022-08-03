Rails.application.routes.draw do
  resources :telephones
  resources :addresses
  resources :emails
  resources :people
  resources :posts
  get "/hello", to: "hello#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
