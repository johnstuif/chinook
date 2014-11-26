json.album @album, :title, :artist_id, :created_at, :updated_at 

json.tracks @album.tracks do |track| 
  json.name track.name 
  json.milliseconds track.milliseconds
  json.price track.unit_price
end





