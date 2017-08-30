Rails.application.routes.draw do
  root 'charts#index'
  
  resources :artists do
    resources :songs, only: [:edit, :new, :create, :destroy, :update]
  end

  patch '/chart/:id/song/:song_id', to: 'charts#add_song_to_chart', as: "song_to_chart"
  
  resources :charts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
