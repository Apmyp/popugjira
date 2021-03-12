Rails.application.routes.draw do
  root 'issues#index'
  resources :issues, only: %i[create]
end
