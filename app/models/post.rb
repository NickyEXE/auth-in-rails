class Post < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes

  def like_count
    likes.count
  end
end
