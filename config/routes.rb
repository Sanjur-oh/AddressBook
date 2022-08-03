Rails.application.routes.draw do
  # get 'home/index'
  get 'home/people'
  root 'home#index'

  
  resources :telephones
  resources :addresses
  resources :emails
  resources :people
  resources :posts


  # Defines the root path route ("/")
  # root "articles#index"
end
