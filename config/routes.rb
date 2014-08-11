Rails.application.routes.draw do
  root "home#index"
  get "about" => "about#index"
  # get "new" => "gifs#new"

  resources :gifs
end

