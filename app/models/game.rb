class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :platform
  belongs_to :publisher
end
