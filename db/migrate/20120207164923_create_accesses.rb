class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.string :name
      t.integer :user_id
      t.integer :level

      t.timestamps
    end
  end
end
