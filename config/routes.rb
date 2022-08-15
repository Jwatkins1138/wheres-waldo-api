Rails.application.routes.draw do
  resources :levels

  namespace :api do 
    namespace :v1 do
      get 'levels/index'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "levels#index"
end
