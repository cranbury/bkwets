Rails.application.routes.draw do
  root 'games#index'

  resources :games, except: :show
end
