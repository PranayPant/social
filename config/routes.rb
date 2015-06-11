Rails.application.routes.draw do

  devise_for :users, :controllers => { 
    omniauth_callbacks: "callbacks" 
  }
  
  resources :users
  
  root to: "pages#welcome"

  # Accounts and their action
  get '/google_oauth2/:feature/authorize', controller: 'google_features', 
  										   action: 'authorize', as: :gmail

end
