class User < ApplicationRecord
  validates :name, :username, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 3..12 }

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
