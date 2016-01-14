class UserRoute < ActiveRecord::Base
	belongs_to :user

	has_one :startpoint, dependent=>:destroy
	validates :startpoint, presence: true
	accepts_nested_attributes_for :startpoint

	has_one :goalpoint, dependent=>:destroy
	validates :goalpoint, presence: true
	accepts_nested_attributes_for :goalpoint

	has_many :transitpoint, dependent=>:destroy
	accepts_nested_attributes_for :transitpoint
	#explanation ポリモーフィック
	has_one :explanation, as: :explanable
end
