Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # if http request to this url, send to controller#method
  # # Read an INDEX of all artists
  # get '/artists', to: "artists#index"
  # # Create a NEW artist (through a form)
  # get '/artists/new', to: "artists#new"
  # # SHOW information about one artist
  # get '/artists/:id', to: "artists#show", as: :artist
  # # Create an artist in the DB
  # post '/artists', to: "artists#create"
  # # Edit an artist via a form
  # get '/artists/:id/edit', to: "artists#edit", as: :artist_edit
  # # Update an artist in the DB
  # patch '/artists/:id', to: "artists#update"
  # # Delete an artist by its id
  # delete '/artists/:id', to: "artists#destroy"

  resources :artists # all 7 crud routes with prefixes
  # resources :artists, only: [:index, :show]
  # resources :artists, except: [:index, :show]
end
