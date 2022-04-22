class Publisher < ApplicationRecord
  has_many :games

  validates :publisher_name, presence: true
  validates :publisher_name, uniqueness: true
end
