Rails.application.routes.draw do
  get "customer/show"
  namespace :dashboard do
    get "customer/:id", to: "customers#show", as: :customer
    get "barber/:id", to: "barbers#show", as: :barber
    get "barber_shop/:id", to: "barber_shops#show", as: :barber_shop
  end

  devise_for :barber_shops, controllers: {
    registrations: "barber_shops/registrations"
  }

  devise_for :barbers, controllers: {
    registrations: "barbers/registrations"
  }

  devise_for :customers, controllers: {
    registrations: "customers/registrations"
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "welcome#index"
end
