Rails.application.routes.draw do
  root 'charts#index'
  
  resources :artists do
    resources :songs, only: [:edit, :new, :create, :destroy, :update]
  end

  patch '/chart/:id/song/:song_id', to: 'charts#add_song_to_chart', as: "song_to_chart"
	delete 'remove_billboard_song/:id/:song_id', to: 'charts#remove_song_from_chart', as: 'remove_song_from_chart'
  
  resources :charts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
