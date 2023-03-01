class SongsController < ApplicationController
    #Songs Routings

    ##get all songs
    get "/songs" do
        songs = Song.all
        songs.to_json()
     end

     ## get one producer
    get "/songs/:id" do
        song = Song.find_by(id: params[:id])
        song.to_json()
    end
end