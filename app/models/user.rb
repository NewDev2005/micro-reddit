class User < ApplicationRecord
  validates :name, :username, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 3..12 }

  has_many :posts
  has_many :comments
end
