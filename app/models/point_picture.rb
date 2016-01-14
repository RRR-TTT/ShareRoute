class PointPicture < ActiveRecord::Base
	belongs_to :point_picturable, polymorphic: true
end
