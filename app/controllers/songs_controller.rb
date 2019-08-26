class SongsController < ApplicationController
  before_action :set_artist
  
  def new
    @song = Song.where("artist_id = ?" params[:artist_id])
  end

  def create
    @song = @artist.song.new(song_params)
    if @song.save
      redirect_to list_artis_path(@artist.list_id, @artist)
    else
      render :new
    end
  end


  private
  
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def songs_params
    params.require(:song).permit(:name, @artist)
  end
end
