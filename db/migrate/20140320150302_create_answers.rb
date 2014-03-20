class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question
      t.references :book
      t.references :user
      t.string :body
      t.integer :likes_count, null: false, default: 0

      t.timestamps
    end
    add_index :answers, :question_id
    add_index :answers, :book_id
    add_index :answers, :user_id
  end
end
