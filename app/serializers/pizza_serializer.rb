class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients

  def summary
    "#{self.name} - #{self.ingredients}..."
  end

end
