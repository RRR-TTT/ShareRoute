json.array!(@point_pictures) do |point_picture|
  json.extract! point_picture, :id, :PointPictureImage, :PostingUser_id
  json.url point_picture_url(point_picture, format: :json)
end
