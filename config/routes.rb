Rails.application.routes.draw do
  get 'assets/create'
  get 'assets/destroy'
  root "people#index"
  resources :people do
    resources :guardians
    resources :assets
  end
end
