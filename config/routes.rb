Rails.application.routes.draw do

  root 'resource_items#index'
  devise_for :lens_shifters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :resource_items, only: [:index, :show]
  namespace :instructor do
  	resources :resource_items, only: [:create, :new, :update, :edit]	
  end
end
