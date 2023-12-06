Rails.application.routes.draw do
  root 'welcome#index'
  resources :beneficiaries
  resources :stocks
  resources :ocurrences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
