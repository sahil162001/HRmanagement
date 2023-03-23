Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"
  get "password", to:"passwords#edit", as: :edit_password
  patch "password", to:"passwords#update"
  get "profile", to:"profiles#edit", as: :edit_profile
  patch "profile", to:"profiles#update"
  get "sign_up",to:"users#new"
  post "sign_up", to: "users#create"
  get "sign_in",to:"sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
 
  # root "projects#index"
  # root "leaves#index"
 
  resources :users,:main,:sessions,:projects,:leaves,:payslips,:profiles

end
