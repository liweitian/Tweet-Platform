class Tweet < ApplicationRecord
  has_many :likes
  has_many :comments
  belongs_to :user
  validates :user_id,:content,:time, presence: true
  validates :content, length: { maximum: 140 }
end
