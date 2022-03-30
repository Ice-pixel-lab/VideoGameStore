class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :game_name
      t.date :release_year
      t.decimal :price

      t.timestamps
    end
  end
end
