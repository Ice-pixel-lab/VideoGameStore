class AddGenreToGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :games, :genre, null: false, foreign_key: true
  end
end
