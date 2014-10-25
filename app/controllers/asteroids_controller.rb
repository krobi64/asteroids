class AsteroidsController < ApplicationController
  respond_to :json
  def index
    @asteroids = Asteroid.where(neo: true)
    render json: @asteroids.map(&:asteroid_packet)
  end
end
