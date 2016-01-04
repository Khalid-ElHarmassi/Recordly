module ArtistsHelper

  def album_search

    #@artist_album = Album.all.to_a.each

    @artist_albumsArray = Array.new
    @album.each do |album1|
      @artist.each do |artist|
        if album1.artist_name ==artist.artist_name
          @artist_albumsArray.push(album1)
        end
      end
    end
  end



end
