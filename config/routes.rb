Rails.application.routes.draw do
  root 'games#index'

  resources :games, except: :show

  get 'games/coordinates.json', to: 'games#coordinates'
end
