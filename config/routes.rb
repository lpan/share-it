Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    resources :users, only: %i[create show] do
      resources :events, only: %i[create show]
    end
  end
end
