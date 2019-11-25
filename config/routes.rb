Rails.application.routes.draw do
  devise_for :users
  root to: 'services#index'
  resources :services do
    resources :bookings, only: [:show, :new, :create]
  end
  resources :bookings, only: [:destroy]

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
