class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :users_favorite_tv_shows, dependent: :destroy
  has_many :tv_shows, through: :users_favorite_tv_shows
end
