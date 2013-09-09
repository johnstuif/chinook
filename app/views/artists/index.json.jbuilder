json.array!(@artists) do |artist|
  json.extract! artist, :name
  json.url artist_url(artist, format: :json)

  json.albums artist.albums do |json, album|
    json.(album, :id, :title)
    json.tracks album.tracks do |json, track|
      json.(track, :name)
    end
  end

end
