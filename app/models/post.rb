class Post < ApplicationRecord
  validates :link, :user_id, presence: true
  has_many :comments
  belongs_to :user
end
