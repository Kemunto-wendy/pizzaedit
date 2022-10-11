class RestaurantPizzasController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unproccessable_entity_response
  def index
    restaurant_pizza = RestaurantPizza.all
    render json: restaurant_pizza
  end

  def create
        res_pizza= RestaurantPizza.create!(respizza_params)
        render json: res_pizza.piza , status: :created
    end

    private

    def respizza_params
      params.permit(:price, :piza_id, :restaurant_id)
    end

    def render_unproccessable_entity_response(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
