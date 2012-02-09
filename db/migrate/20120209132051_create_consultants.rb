class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :name
      t.integer :group_id

      t.timestamps
    end
  end
end
