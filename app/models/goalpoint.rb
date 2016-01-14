class Goalpoint < ActiveRecord::Base
	belongs_to :user_route

	#map ポリモーフィック
	has_one :map, as: :mapable

	# point_picture ポリモーフィック
	has_many :point_picture, as: :point_picturable
	#explanation ポリモーフィック
	has_many :explanation, as: :explanable
end
