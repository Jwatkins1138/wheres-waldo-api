Rails.application.routes.draw do
  resources :levels

  namespace :api do 
    namespace :v1 do
      resources :levels
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "levels#index"
end
