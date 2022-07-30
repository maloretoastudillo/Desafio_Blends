Rails.application.routes.draw do
  resources :experts
  devise_for :users
  resources :wines
  resources :strains

  root 'wines#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
