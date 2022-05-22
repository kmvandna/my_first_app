class Post < ApplicationRecord
  has_many :likes, as: :liked_to, dependent: :destroy

  def is_liked_by_user?(user_id)
    self.likes.find_by_user_id(user_id).present?
  end
end
