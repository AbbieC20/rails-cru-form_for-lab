class SongsController < ApplicationController
    def show
        @song = Song.find(params[:id])
        @song_artist = Artist.find(@song.artist_id)
        @song_genre = Genre.find(@song.genre_id)
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new
        @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def index
        @songs = Song.all
    end


end