class UserRelationship < ActiveRecord::Base
	belongs_to :favorite_user, class_name: "User"
	belongs_to :favorited_user, class_name: "User"
end
