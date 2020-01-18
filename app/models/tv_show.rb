class TvShow < ApplicationRecord
  belongs_to :channel

  has_many :users_favorite_tv_shows, dependent: :destroy
  has_many :users, through: :users_favorite_tv_shows

  delegate :name, to: :channel, prefix: true

  def self.search(keyword)
    if keyword.present?
      TvShow.joins(:channel).where("tv_shows.name LIKE ? OR channels.name LIKE ?", "%#{keyword}%", "%#{keyword}%")
    else
      TvShow.all
    end
  end

  def favorite_for?(user)
    users_favorite_tv_shows.where(user_id: user.id).exists?
  end
end
