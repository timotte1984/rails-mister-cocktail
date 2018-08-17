Rails.application.routes.draw do
  root :to => "cocktails#index"
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]

end
