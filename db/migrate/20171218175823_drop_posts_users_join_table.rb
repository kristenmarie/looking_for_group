class DropPostsUsersJoinTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :posts_users
  end
end
