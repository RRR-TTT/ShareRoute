json.array!(@transitpoints) do |transitpoint|
  json.extract! transitpoint, :id, :TransitpointName, :TransitpointSpendTime
  json.url transitpoint_url(transitpoint, format: :json)
end
