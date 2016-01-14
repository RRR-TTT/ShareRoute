json.array!(@startpoints) do |startpoint|
  json.extract! startpoint, :id, :StartpointName, :StartpointSpendTime
  json.url startpoint_url(startpoint, format: :json)
end
