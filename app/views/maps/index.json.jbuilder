json.array!(@maps) do |map|
  json.extract! map, :id, :lat, :lon, :address
  json.url map_url(map, format: :json)
end
