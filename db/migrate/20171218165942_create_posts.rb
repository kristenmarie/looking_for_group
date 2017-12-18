class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :game_title
      t.integer :players_needed
      t.string :location
      t.string :play_location
      t.integer :user_id

      t.timestamps
    end
  end
end
