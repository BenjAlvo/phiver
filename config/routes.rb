Rails.application.routes.draw do
  devise_for :users
  root to: 'services#index'
  resources :services do
    resources :bookings, only: [:show, :new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
  resources :dashboards, only: [:index]
  get "dashboards/services"

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
