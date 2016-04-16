Rails.application.routes.draw do
  root 'singles#welcome'

  resources :teams, only: :index do
    resources :games do
      resources :rsvps, only: :create
    end
  end

  get 'whiteboard', to: 'singles#whiteboard'
  get 'practice', to: 'singles#practice'
  get 'contact', to: 'singles#contact'

  get 'teams/:team_id/games/:id/coordinates.json', to: 'games#coordinates'
end
