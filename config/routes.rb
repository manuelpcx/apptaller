Rails.application.routes.draw do
 
  get 'billings/index'
  get 'orders/create'
  get 'search/index'
  get 'welcome/index'
  get 'welcome/paneladmin'
  root 'welcome#index'
  resources :marcas do 
    resources :models 
  end
  
  devise_for :users
  resources :cars do 
    resources :orders, only: :create
  end

  resources :billings, only: :index do 
    collection do
      get 'execute'
    end
  end

  resources :orders, only: :index do
    collection do
      get 'clean'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
