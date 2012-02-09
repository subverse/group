class RemoveGroupIdFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :group_id
  end

  def down
  end
end
