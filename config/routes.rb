Rails.application.routes.draw do
  root 'teams#index'

  resources :teams, only: :index do
    resources :games, except: :show
  end

  get 'teams/:team_id/games/coordinates.json', to: 'games#coordinates'
end
