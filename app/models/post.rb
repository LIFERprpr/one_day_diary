class Post < ApplicationRecord

  belongs_to :user
  attachment :image
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }
  validates :contents, presence: true, length: { maximum: 200 }


  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
