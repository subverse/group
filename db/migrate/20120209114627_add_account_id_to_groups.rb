class AddAccountIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :account_id, :integer
  end
end
