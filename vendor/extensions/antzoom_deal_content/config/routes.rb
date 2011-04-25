Rails.application.routes.draw do
  
  resources :brands do
        resources :deals
  end
   
  resources :stores do
        resources :deals
  end 
  
end
