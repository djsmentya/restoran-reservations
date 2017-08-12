Rails.application.routes.draw do
  resources :restorans
  resources :tables do
    resources :reservations
  end
  root 'reservations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
