class Comment < ApplicationRecord
  belongs_to :tweet
  validates :content, length: { maximum: 140 }
end
