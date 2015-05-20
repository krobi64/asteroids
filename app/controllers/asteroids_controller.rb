class AsteroidsController < ApplicationController

  respond_to? :json, :html

  def index
    Rails.logger.info "HERE"
    @asteroids = Asteroid.all
    render :json, @asteroids
  end

  def show
    @asteroid = Asteroid[params[:id]]
  end
end
