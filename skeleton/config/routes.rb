Rails.application.routes.draw do
  # Your routes here!

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :gifts, only: [:index, :show]
    resources :guests, only: [:index, :show]
    resources :parties, only: [:index, :show]
  end
 
end
