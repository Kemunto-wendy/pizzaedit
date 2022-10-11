Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    resources :pizzas, only: [:index, :show]
    resources :restaurants, only: [:index, :show, :destroy]
  resources :restaurant_pizzas, only: [:index, :show, :create]

  # Defines the root path route ("/")

  # root "articles#index"

end
