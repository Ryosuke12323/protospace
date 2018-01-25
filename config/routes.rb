Rails.application.routes.draw do
  resources :prototypes, only: %i[index show new]
  root 'prototypes#index'
end
