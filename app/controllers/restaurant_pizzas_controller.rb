class RestaurantPizzasController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unproccessable_entity_response
  def index
    restaurant_pizza = RestaurantPizza.all
    render json: restaurant_pizza
  end

  def show
    restaurant_pizza = RestaurantPizza.find(params[:id])
    render json: restaurant_pizza,  status: :ok
end

  def create
        res_pizza= RestaurantPizza.create!(respizza_params)
        render json: res_pizza, status: :created
    end

    private

    def respizza_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_unproccessable_entity_response(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
