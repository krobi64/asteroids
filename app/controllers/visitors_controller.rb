class VisitorsController < ApplicationController
  def index
    render file: 'public/index.html'
  end

  def ae
    render file: 'public/ae/index.html'
  end
end
