class PizzaController < ApplicationController
  def index
    pizzas = Pizza.all
    render json: pizzas
  end

  def summary
    pizza = Pizza.find(params[:id])
    render json: pizza, serializer: PizzaSummarySerializer
  end

end
