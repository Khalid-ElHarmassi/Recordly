json.array!(@songs) do |song|
  json.extract! song, :id, :spng_title, :album_id, :favorite_song
  json.url song_url(song, format: :json)
end
