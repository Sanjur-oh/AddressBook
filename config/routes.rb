Rails.application.routes.draw do
  resources :posts
  get "/hello", to: "hello#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
