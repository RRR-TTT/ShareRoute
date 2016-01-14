class Explanation < ActiveRecord::Base
	#ポリモーフィック
	#user_route, startpoint, transitpoint, endpoint
	belongs_to :explanable, polymorphic: true
end
