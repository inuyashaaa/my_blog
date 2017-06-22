class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :content, presence: true,
    length: {maximum: Settings.posts.maximum_body_length}
end
