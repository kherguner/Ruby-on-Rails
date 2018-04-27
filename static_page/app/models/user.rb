class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :password, presence: true
  validates :username, length: {minimum: 3}
  validates :password, length: {minimum: 3}
end
