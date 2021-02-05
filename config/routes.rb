Rails.application.routes.draw do
  namespace :admin do
      resources :companies

      root to: "companies#index"
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
