Rails.application.routes.draw do
  root "people#index"
  get "/people", to: "people#index"
end
