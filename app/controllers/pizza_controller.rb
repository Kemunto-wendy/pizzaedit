class PizzaController < ApplicationController
  def index
    render json: {hello: "Welcome to our pizza restaurant", name: "kempinski"}
  end
end
