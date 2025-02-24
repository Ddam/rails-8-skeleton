Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  get "/:locale" => "dashboard#index", :as => "dashboard"
  # Defines the root path route ("/")
  root "dashboard#index"

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users,
      path: "auth",
      controllers: {
        registrations: "users/registrations",
        passwords: "users/passwords",
        sessions: "users/sessions"
      },
      path_names: {
        sign_in: "login",
        sign_out: "logout",
        password: "secret",
        confirmation: "verification",
        unlock: "unblock",
        registration: "register",
        sign_up: ""
      }
  end
end
