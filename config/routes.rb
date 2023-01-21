Rails.application.routes.draw do
  root "bookings#index"

  resources :bookings
  resources :flights
  resources :airports
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
