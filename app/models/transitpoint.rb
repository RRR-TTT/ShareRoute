class Transitpoint < ActiveRecord::Base
	belongs_to :user_route

	has_one :nextpoint
	# map ポリモーフィック
	has_one :map, as: :mapable

	# explanation ポリモーフィック
	has_many :explanation, as: :explanable
	# point_picture ポリモーフィック
	has_many :point_picture, as: :point_picturable

end
