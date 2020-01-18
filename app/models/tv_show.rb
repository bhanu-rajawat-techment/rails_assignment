class TvShow < ApplicationRecord
  belongs_to :channel

  has_many :users_favorite_tv_shows, dependent: :destroy
  has_many :users, through: :users_favorite_tv_shows
end
