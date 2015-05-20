class VisitorsController < ApplicationController

  before_filter :allow_iframe_requests
  def mpc
    render file: 'public/mpc/index.html'
  end

  def ae
    render file: 'public/ae/index.html'
  end

  private
  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end
end
