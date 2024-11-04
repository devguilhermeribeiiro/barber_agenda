Rails.application.routes.draw do
  resources :customer, only: %i[show index]
  resources :barber, only: %i[show index]
  resources :home, only: %i[index show new create]

  devise_for :barbers, controllers: {
    registrations: "barbers/registrations"
  }

  devise_for :customers, controllers: {
    registrations: "customers/registrations"
  }
  root "welcome#index"
end
