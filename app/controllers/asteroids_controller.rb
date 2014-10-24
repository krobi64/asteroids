class AsteroidsController < ApplicationController
  respond_to :json
  def index
    @asteroids = Asteroid.where(pha: true)
    render json: @asteroids
  end
end
