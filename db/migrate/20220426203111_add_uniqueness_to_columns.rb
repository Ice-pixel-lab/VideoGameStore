class AddUniquenessToColumns < ActiveRecord::Migration[7.0]
  def change
    add_index :games, :game_name, unique: true
    add_index :genres, :genre_name, unique: true
    add_index :platforms, :platform_name, unique: true
    add_index :publishers, :publisher_name, unique: true
  end
end
