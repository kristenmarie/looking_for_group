class CreateGroupsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :groups_tables do |t|
      t.string :game_title
      t.integer :players_needed
      t.string :location
      t.string :play_location

      t.timestamps
    end
  end
end
