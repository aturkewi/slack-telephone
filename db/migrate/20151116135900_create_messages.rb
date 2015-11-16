class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :player_id
      t.integer :game_id
      t.string :giphy_link
      t.string :word

      t.timestamps null: false
    end
  end
end
