Rails.application.routes.draw do
  # Add your extension routes here
  
  #match '/deals' => 'checkout#edit', :state => 'address', :as => :checkout
  #resources :deals, :only => [:edit, :update, :destroy]
  resources :deals
  
end
