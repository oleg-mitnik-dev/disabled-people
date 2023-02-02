Rails.application.routes.draw do
  root "people#index"
  resources :people do
    resources :guardians
  end
end
