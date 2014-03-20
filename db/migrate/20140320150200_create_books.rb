class CreateBooks < ActiveRecord::Migration
  def change
    # FIXME: we'll probably add to this based on what google's book API provides
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.text :description

      t.timestamps
    end
  end
end
