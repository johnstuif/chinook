json.array!(@media_types) do |media_type|
  json.extract! media_type, :name
  json.url media_type_url(media_type, format: :json)
end
