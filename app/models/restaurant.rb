class Restaurant < ApplicationRecord
  has_many :Pizzas, through: :restaurant_pizzas
  has_many :restaurant_pizzas ,dependent: :destroy
end
