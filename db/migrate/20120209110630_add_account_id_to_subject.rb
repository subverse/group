class AddAccountIdToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :account_id, :integer
  end
end
