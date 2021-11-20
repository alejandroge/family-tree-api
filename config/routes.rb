Rails.application.routes.draw do
  defaults format: :json do
    resources :people, only: [:index, :create] do
      get :family
    end
  end
end
