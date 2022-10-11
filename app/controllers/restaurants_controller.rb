class RestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
      restaurants=Restaurant.all
      render json: restaurants, include: ['']
  end

    def show
      restaurant = Restaurant.find(params[:id])
      render json: restaurant, include: ['pizzas']
  end

  def destroy
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
      restaurant.destroy
      else
      render json: {error: "Restaurant not found"}, status: :not_found
  end
end

  private

  def render_not_found_response
    render json: { error: "Restaurant not found" }, status: :not_found
  end

  end

