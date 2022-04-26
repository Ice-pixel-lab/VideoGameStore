class Genre < ApplicationRecord
  has_many :games, dependent: :destory

  validates :genre_name, presence: true
  validates :genre_name, uniqueness: true
end
