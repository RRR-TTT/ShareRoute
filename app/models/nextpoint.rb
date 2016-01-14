class Nextpoint < ActiveRecord::Base
	belongs_to :user_route

	has_one :nextpoint
	# map ポリモーフィック
	has_one :map, as: :mapable

	# explanation ポリモーフィック
	has_many :explanation
	has_many :point_picture

end
