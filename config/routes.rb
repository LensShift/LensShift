Rails.application.routes.draw do
  
  resources :resource_items
  root 'resource_items#index'
  devise_for :lens_shifters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
