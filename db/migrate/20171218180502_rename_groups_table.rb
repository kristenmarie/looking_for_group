class RenameGroupsTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :groups_tables, :groups
  end
end
