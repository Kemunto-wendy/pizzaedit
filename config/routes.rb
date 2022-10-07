Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    get "/pizza", to: "pizza#index"
    resources :pizzas, only: [:index]

    get "/restaurant", to: "restaurant#index"
    resources :restaurants, only: [:index,:show,:destroy]
  # Defines the root path route ("/")

  get "/restaurant_pizza", to: "restaurant_pizza#index"
  # root "articles#index"
  get '/pizza/:id/summary', to: 'pizza#summary'
end
