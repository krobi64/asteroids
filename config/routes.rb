Rails.application.routes.draw do
  resources :asteroids, only: [:index, :show]

  get '/ae', controller: :visitors, action: :ae

  root to: 'visitors#index'
end
