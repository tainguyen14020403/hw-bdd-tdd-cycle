Rottenpotatoes::Application.routes.draw do
  resources :movies
  match '/movies/:id/similar(.:format)', to: 'movies#similar', as: 'movie_similar', via: :get
  root :to => redirect('/movies')
end
