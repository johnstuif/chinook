json.array!(@albums) do |album|
  json.extract! album, :title, :artist_id
  json.url album_url(album, format: :json)


  json.tracks (album.tracks) do |track|
    json.extract! track, :name, :milliseconds, :unit_price
  end
end
