Rails.application.routes.draw do
  
 #  post '/tourists', to: 'tourists#create'  
  resources :payments, :tourists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :tourists
  
  resources :insiders do
  	
  	resources :tours
  end
  
end
