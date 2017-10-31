Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :arrows
      get '/home', to: 'home#index', as: :homepage
    end
  end
  mount_ember_app :frontend, to: "/"
end
