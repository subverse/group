class RemoveColumnAccountIdFromGroup < ActiveRecord::Migration
  def up
    remove_column :groups, :account_id
  end

  def down
  end
end
