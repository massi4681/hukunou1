class Item < ApplicationRecord
	attachment :image
	belongs_to :user
	has_many :favorites, dependent: :destroy
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  has_many :orders, dependent: :destroy
end
