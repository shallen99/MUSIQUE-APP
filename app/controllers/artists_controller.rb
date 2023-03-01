class ArtistsController < ApplicationController
    # Artist Routings

    ## get all artists
    get "/artists" do
        artists = Artist.all
        artists.to_json()
     end

     ## get one artist
    get "/artists/:id" do
        artist = Artist.find_by(id: params[:id])
        artist.to_json()
    end

   ## post artist
   post "/artists/" do
    artist = Artist.create(
        artist_name: params[:artist_name],
        song_name: params[:song_name],
        genre: params[:genre]
    )

    artist.save()
    {
        "message": "Your artist has been added",

    }.to_json
   end

   ##patch artist
   patch "/artist/update/:id" do 
    hackathon
    

   end

end