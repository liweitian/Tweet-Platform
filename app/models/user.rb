class User < ApplicationRecord
  has_many :likes
  has_many :tweets
  has_many :followers
  has_one :privatespace
  validates :account,:password,:name,:gender, presence: true
  validates :gender, inclusion: { in: %w(male female), message: "male or female" }
  validates :password, length: {maximum: 16, minimum: 8}
  validates :account, uniqueness:true
end
