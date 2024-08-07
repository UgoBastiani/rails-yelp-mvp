Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end


  resources :restaurants
  get "up" => "rails/health#show", as: :rails_health_check

end
