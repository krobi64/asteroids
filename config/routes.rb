Rails.application.routes.draw do
  resources :asteroids, only: [:index]

  root to: 'visitors#index'
end
