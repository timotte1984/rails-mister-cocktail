Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:create, :destroy, :new]
  end
  resources :doses, only: [:destroy]


  # resources :ingredients do
  #   resources :doses, only: [:create, :update, :destroy]
  # end
  # resources :doses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
