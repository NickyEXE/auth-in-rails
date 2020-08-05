class Post < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes

  def total_likes
    likes.count
  end
end
