Rails.application.routes.draw do
  resources :telephones
  resources :addresses
  resources :emails
  resources :people
  resources :users
  # get 'home/index'
  get 'home/people'
  root 'home#index'

  
  resources :posts


  # Defines the root path route ("/")
  # root "articles#index"
end
