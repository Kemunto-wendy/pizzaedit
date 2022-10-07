class Restaurant < ApplicationRecord
  has_many :Pizzas, through: :RestaurantPizza
end
