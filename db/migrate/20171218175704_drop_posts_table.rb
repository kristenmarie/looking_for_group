class DropPostsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :posts
  end
end
