class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :pizza_id,  :price

  belongs_to :pizza
  belongs_to :restaurant
end
