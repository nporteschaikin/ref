class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :title
      t.string :description
      t.references :user
      t.datetime :created_at
    end
  end
end
