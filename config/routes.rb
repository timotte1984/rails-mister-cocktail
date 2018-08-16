Rails.application.routes.draw do
  resources :cocktails
  # resources :ingredients do
  #   resources :doses, only: [:create, :update, :destroy]
  # end
  # resources :doses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
