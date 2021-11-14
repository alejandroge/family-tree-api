Rails.application.routes.draw do
  resources :people, only: [:index, :create] do
    get :family
  end
end
