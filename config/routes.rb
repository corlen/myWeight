MyWeight::Application.routes.draw do

  get "user_profile/index"

  devise_for :users

  resources :weights, :except => [:index]
  resources :users
  match "weights"  => "home#index"
  get "home/index"
  
  root :to => "home#index"

end
