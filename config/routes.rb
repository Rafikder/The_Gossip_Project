Rails.application.routes.draw do

	resources :gossips
	root"gossips#index"

	get "gossips/new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
