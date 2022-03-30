class AddPublisherToGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :games, :publisher, null: false, foreign_key: true
  end
end
