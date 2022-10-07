class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients

  def summary
    "#{self.object.name} - #{self.object.ingredients}..."
  end
end
