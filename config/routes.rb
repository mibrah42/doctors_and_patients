Rails.application.routes.draw do
  root 'doctors#index'

  resources :doctors, only: [:index, :show, :new, :create] do
    resources :consultations, only: [:new, :create]
  end

  resources :consultations, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
