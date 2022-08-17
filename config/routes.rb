Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  # to resolve signing out exception
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end 

  resources :friends
  get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'friends#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
