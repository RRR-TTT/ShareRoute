json.array!(@goalpoints) do |goalpoint|
  json.extract! goalpoint, :id, :GoalpointName, :GoalpointSpendTime
  json.url goalpoint_url(goalpoint, format: :json)
end
