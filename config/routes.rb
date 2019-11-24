Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :services do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
