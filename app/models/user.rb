class User < ActiveRecord::Base
  has_secure_password
  validates :username, :password_digest, presence: true
  validates :username, uniqueness: true
end
