Rails.application.routes.draw do
  root 'sessions#login'
  resources :choir_members
  resources :choir_leaders do
    resources :practice_times, only: [:show, :index, :new]
  end
  resources :practice_times
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/reserve", to: "practice_times#reserve"
  post "/reserve", to: "practice_times#reserve"
end
