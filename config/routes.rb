Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #ARTISTS_CONTROLLER
  post 'artists', to: 'artist#create'
  get 'artists', to: 'artist#index'
  get 'artists/:artist_id', to: 'artist#show'
  put 'artists/:artist_id/albums/play', to: 'artist#play_artist_tracks' 
  delete 'artists/:artist_id', to: 'artist#delete' ###

  #ALBUMS_CONTROLLER
  post 'artists/:artist_id/albums', to: 'album#create'
  get 'albums', to: 'album#index'
  get 'albums/:album_id', to: 'album#show'
  get 'artists/:artist_id/albums', to:'album#albums_artist'
  put 'albums/:album_id/tracks/play', to: 'album#play_album_tracks' 
  delete 'albums/:album_id', to: 'album#delete' ###

  #TRACKS_CONTROLLER
  post 'albums/:album_id/tracks', to: 'track#create'
  get 'tracks', to: 'track#index'
  get 'tracks/:track_id', to: 'track#show'
  get 'artists/:artist_id/tracks', to: 'track#tracks_artist' 
  get 'albums/:album_id/tracks', to:'track#tracks_album'
  put 'tracks/:track_id/play', to: 'track#play_track' 
  delete 'tracks/:track_id', to: 'track#delete' ###



  get "*missing" ,to: 'artist#method_not_allowed'
  post "*missing" ,to: 'artist#method_not_allowed'
  put  "*missing" ,to: 'artist#method_not_allowed'
  delete "*missing" ,to: 'artist#method_not_allowed'
end
