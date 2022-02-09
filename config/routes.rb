Rails.application.routes.draw do
  get 'log_out' => 'sessions#destroy', :as => 'log_out'
  get 'log_in' => 'sessions#new', :as => 'log_in'
  get 'sign_up' => 'users#new', :as => 'sign_up'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root :to => "users#new"
  resources :users
  resources :sessions
end
