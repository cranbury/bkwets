Rails.application.routes.draw do
  root 'teams#index'

  resources :teams, only: :index do
    resources :games do
      resources :rsvps, only: :create
    end
  end

  get 'teams/:team_id/games/:id/coordinates.json', to: 'games#coordinates'
end
