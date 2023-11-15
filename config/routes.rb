Rails.application.routes.draw do


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"
  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants/:id", to: "restaurants#show", as: "restaurant"
  # get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"
  # post "/restaurants", to: "restaurants#create"

  resources :restaurants, only: [:index, :show, :new, :create]

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

end

