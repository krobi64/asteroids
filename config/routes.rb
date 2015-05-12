Rails.application.routes.draw do
  resources :asteroids, only: [:index]

  get '/ae', controller: :visitors, action: :ae

  root to: 'visitors#index'
end
