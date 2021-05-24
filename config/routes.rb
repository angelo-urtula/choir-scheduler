Rails.application.routes.draw do
  root 'sessions#login'
  resources :choir_members
  resources :choir_leaders do
    resources :service_times, only: [:show, :index, :new]
  end
  resources :service_times
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
