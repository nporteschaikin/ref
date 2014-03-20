class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :commented, polymorphic: true
      t.references :user
      t.text :body
      t.integer :likes_count, null: false, default: 0

      t.timestamps
    end
    add_index :comments, [:commented_id, :commented_type]
    add_index :comments, :user_id
  end
end
