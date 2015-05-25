Rails.application.routes.draw do
  resources :asteroids, only: [:index, :show]

  get '/ae',  controller: :visitors, action: :ae
  get '/mpc', controller: :visitors, action: :mpc
  get '/cpanel', controller: :visitors, action: :cpanel

  root to: 'visitors#ae'
end
