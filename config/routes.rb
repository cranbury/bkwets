Rails.application.routes.draw do
  root 'teams#index'

  resources :teams, only: :index do
    resources :games
  end

  get 'teams/:team_id/games/:id/coordinates.json', to: 'games#coordinates'
end
