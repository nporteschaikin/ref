class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :followed, polymorphic: true
      t.references :user

      t.timestamps
    end
    add_index :relationships, [:followed_id, :followed_type]
    add_index :relationships, :user_id
  end
end
