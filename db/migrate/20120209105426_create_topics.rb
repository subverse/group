class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :group_id
      t.integer :subject_id
      t.integer :account_id

      t.timestamps
    end
  end
end
