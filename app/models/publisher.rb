class Publisher < ApplicationRecord
  has_many :games, dependent: :destory

  validates :publisher_name, presence: true
  validates :publisher_name, uniqueness: true
end
