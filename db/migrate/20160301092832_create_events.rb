class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :image
      t.text :content
      t.date :schedule
      t.integer :price
      t.string :numberofpeople
      t.string :movie

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end
