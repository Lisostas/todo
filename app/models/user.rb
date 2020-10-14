class User < ApplicationRecord
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :name, :email, presence: true
  validates :email, format: {with: VALID_EMAIL_REGEX}, uniqueness: {:case_sensitive => false}
end
