class Post < ApplicationRecord
  belongs_to :user

  scope :create_at_desc, ->{order created_at: :desc}
  scope :load_feed, ->id{where "user_id = ?", id}

  mount_uploader :picture, PictureUploader

  validates :user_id, presence: true
  validates :title, presence: true
  validates :body, presence: true,
    length: {maximum: Settings.posts.maximum_body_length}
  validates :description, presence: true
  validate :picture_size

  private

  def picture_size
    if picture.size > Settings.posts.max_picture_size.megabytes
      errors.add :picture, t(".max_picture_size")
    end
  end
end