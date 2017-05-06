class Privatespace < ApplicationRecord
	belongs_to :user
	validates :user_id,:layout,presence: true
	validates :layout, inclusion: { in: %w(default layout1)}
	validates :user_id, uniqueness:true
end