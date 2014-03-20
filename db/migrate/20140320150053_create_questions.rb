class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :user
      t.references :channel
      t.string :title
      t.text :body
      t.integer :likes_count, null: false, default: 0

      t.timestamps
    end
    add_index :questions, :user_id
    add_index :questions, :channel_id
  end
end
