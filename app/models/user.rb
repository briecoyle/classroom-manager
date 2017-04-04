class User < ApplicationRecord
  has_secure_password
  validates :username, :email, presence: true
  validates :username, uniqueness: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :password, length: { minimum: 8 }
end
