class TestItController < ApplicationController
  def index
    @genres  = Genre.find(:all)
    @artists = Artist.find(:all)
    @songs   = Song.find(:all)
  end

  def update_artists
    # updates artists and songs based on genre selected
    genre = Genre.find(params[:genre_id])
    artists = genre.artists
    songs   = genre.songs

    render :update do |page|
      page.replace_html 'artists', :partial => 'artists', :object => artists
      page.replace_html 'songs',   :partial => 'songs',   :object => songs
    end
  end

  def update_songs
    # updates songs based on artist selected
    artist = Artist.find(params[:artist_id])
    songs  = artist.songs

    render :update do |page|
      page.replace_html 'songs', :partial => 'songs', :object => songs
    end
  end
end

