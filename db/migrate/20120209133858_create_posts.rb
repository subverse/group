class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :account_id
      t.integer :group_id
      t.integer :consultant_id
      t.integer :subject_id
      t.integer :rating_id
      t.text :content

      t.timestamps
    end
  end
end
