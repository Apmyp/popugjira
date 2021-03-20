Rails.application.routes.draw do
  root 'issues#index'
  resources :issues, only: %i[create] do
    post :reassign, on: :collection
    post :close, on: :member
  end
end
