json.array!(@user_routes) do |user_route|
  json.extract! user_route, :id, :total_time, :UserRouteName
  json.url user_route_url(user_route, format: :json)
end
