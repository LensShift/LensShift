Rails.application.routes.draw do

  resources :lens_shifter_profiles
  root 'resource_items#index'
  devise_for :lens_shifters, controllers: {
    registrations: "lens_shifters/registrations"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :resource_items, path: 'library', only: [:index, :show]
  namespace :instructor do
  	resources :resource_items, only: [:create, :new, :update, :edit] do
  		collection do
  			get :export
  			post :import
  		end
  	end
  end
end
