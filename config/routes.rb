Rails.application.routes.draw do
  get "/login", to: "sessions#new", as: "login"
  delete "/sessions", to: "sessions#destroy"
  resources :sessions, only: [:create]
  resources :users
  resources :fan_faves
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
