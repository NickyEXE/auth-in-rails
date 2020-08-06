class Like < ApplicationRecord
  belongs_to :post, counter_cache: true
  belongs_to :user

  def self.like_or_unlike(user_id, post_id)
    like = Like.find_by(user_id: user_id, post_id: post_id)
    if like
      like.destroy
    else
      Like.create(user_id: user_id, post_id: post_id)
    end
  end
end
