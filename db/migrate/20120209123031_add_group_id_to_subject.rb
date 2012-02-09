class AddGroupIdToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :group_id, :integer
  end
end
