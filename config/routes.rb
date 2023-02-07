Rails.application.routes.draw do
  root "people#index"
  resources :people do
    resources :guardians
    resources :assets
  end
end
