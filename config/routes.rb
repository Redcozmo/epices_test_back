Rails.application.routes.draw do
  # get 'hourly_data/index'
  # get 'hourly_data/import'

  # resources :hourly_data

  resources :hourly_data do
    collection {
      post :import;
      post :pre_import;
      get :pre_import
    }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
