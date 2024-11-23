class ArtistsController < ApplicationController
  before_action :set_artist, except: [:index, :new, :create]
  def index
    # fetch all artists from the DB
    @artists = Artist.all # an array of artist instances
    # '@' makes the variable available in the html
    # return a html page at views/artists/index.html.erb
  end

  def show
    # fetch the artist with the id from the url
    # params = {id: 2}
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    # get the info from the form
    @artist = Artist.new(artist_params)
    # save a new artist to the db
    @artist.save
    # return some html (artist/:id)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    # find the artist to be updated (by id)
    @artist = Artist.find(params[:id])
    # update the instance with the info from the form
    @artist.update(artist_params)
    # redirect to the updated show page
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist.destroy
    redirect_to artists_path, status: :see_other
  end


  private

  def artist_params
    params.require(:artist).permit(:name, :country, :top_hit, :album_count)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
