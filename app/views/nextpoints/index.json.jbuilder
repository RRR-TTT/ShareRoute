json.array!(@nextpoints) do |nextpoint|
  json.extract! nextpoint, :id, :NextpointName, :NextpointRequiredTime, :NextpointTransportation
  json.url nextpoint_url(nextpoint, format: :json)
end
