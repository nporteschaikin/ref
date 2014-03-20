class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :liked, polymorphic: true
      t.references :user

      t.timestamps
    end
    add_index :likes, [:liked_id, :liked_type]
    add_index :likes, :user_id
  end
end
