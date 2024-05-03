class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence :true, length: {minimum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence :true, length: {minimum: 255}, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

end
