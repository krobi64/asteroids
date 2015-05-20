class VisitorsController < ApplicationController

  def mpc
    render file: 'public/mpc/index.html'
  end

  def ae
    render file: 'public/ae/index.html'
  end
end
