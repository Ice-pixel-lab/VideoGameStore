class Platform < ApplicationRecord
  has_many :games

  validates :platform_name, presence: true
  validates :platform_name, uniqueness: true
end
