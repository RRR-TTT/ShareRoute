class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :user_route
	# お気に入りユーザ
	has_many :user_relationships, class_name: "UserRelationship",foreign_key: "favorited_user_id", dependent: :destroy
	# user_relationshipを経由してfavorite_userを取得する
	has_many :favorite_users, through: :user_relationships, source: :favorite_user
	# 他のユーザーをお気に入りにする
	def favorite(other_user)
		user_relationships.find_or_create_by(favorite_user_id: other_user.id)
	end
	# お気に入りユーザーをお気に入りから外す
	def unfavorite(other_user)
		user_relationship = user_relationships.find_by(favorited_user_id: other_user.id)
		user_relationship.destroy if user_relationship
	end
	# あるユーザーがお気に入りかどうか
	def favorite?(other_user)
		user_relationships.include?(other_user)
	end

end
