Rails.application.routes.draw do
  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/login',
      sign_out: 'api/logout',
      registration: 'api/signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }

  defaults format: :json do
    namespace :api do
      resources :users, only: %w[show]

      resources :people, only: [:index, :create] do
        get :family
      end
    end
  end
end
