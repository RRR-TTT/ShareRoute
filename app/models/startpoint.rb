class Startpoint < ActiveRecord::Base
	belongs_to user_route

	has_one :nextpoint
	# map ポリモーフィック
	has_one :map, as: :mapable

	# point_picture ポリモーフィック
	has_many :pointpicture, as: :point_picturable
	#map ポリモーフィック
	#explanation ポリモーフィック
	has_many :explanation, as: :explanable
end
