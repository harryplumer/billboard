Rails.application.routes.draw do
  root 'charts#index'
  
  resources :artists do
    resources :songs, only: [:edit, :new, :create]
  end
  
  resources :charts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
