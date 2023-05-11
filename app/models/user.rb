class User < ApplicationRecord
  has_secure_password
  validates :user_email, presence: true, uniqueness: true
  has_many :posts
  has_many :follows
end
