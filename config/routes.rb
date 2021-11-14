Rails.application.routes.draw do
  resources :people, only: [:index] do
    get :family
  end
end
