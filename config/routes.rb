Rails.application.routes.draw do
  resources :payments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tourists
  
  resources :insider do
  	
  	resources :tours
  end
end
