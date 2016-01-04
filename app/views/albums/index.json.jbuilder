json.array!(@albums) do |album|
  json.extract! album, :id, :album_title, :album_date, :favorite_album, :user_id
  json.url album_url(album, format: :json)
end
