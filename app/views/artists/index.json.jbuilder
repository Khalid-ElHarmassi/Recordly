json.array!(@artists) do |artist|
  json.extract! artist, :id, :artist_name, :favorite_artist
  json.url artist_url(artist, format: :json)
end
