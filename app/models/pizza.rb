class Pizza < ApplicationRecord
  has_many :restaurants, through: :restaurantpizza
  has_many :restaurantpizza
end
