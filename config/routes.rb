Rails.application.routes.draw do
  root to: 'pins#index'
  resources :pins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
