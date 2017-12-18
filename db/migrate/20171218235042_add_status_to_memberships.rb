class AddStatusToMemberships < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :status, :string, default: "pending"
  end
end
