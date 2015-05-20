class AsteroidsController < ApplicationController

  respond_to :json, :html

  def index
    Rails.logger.info "HERE"
    @asteroids = Asteroid.all
    respond_with(@asteroids)
  end

  def show
    @asteroid = Asteroid[params[:id]]
  end
end
