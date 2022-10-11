Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    get "/pizza/:id", to: "pizza#show"

    resources :pizzas, only: [:index, :show]
    resources :restaurants, only: [:index,:show,:destroy]
  resources :restaurant_pizzas, only: [:index]

  # Defines the root path route ("/")

  # root "articles#index"

end
