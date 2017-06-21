class User < ApplicationRecord
  before_save :downcase_email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: {maximum: Settings.user.maximum_name.to_i}
  validates :email, presence: true, length: {maximum: Settings.user.maximum_email.to_i},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {minimum: Settings.user.minium_password_length.to_i}

  has_secure_password

  scope :activated, ->{where activated: true}

  private

  def downcase_email
    email.downcase!
  end
end
