class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :platform
  belongs_to :publisher

  validates :game_name, :price, :release_year, presence: true
  validates :game_name, uniqueness: true
  validates :release_year, :price, numericality: true
end
