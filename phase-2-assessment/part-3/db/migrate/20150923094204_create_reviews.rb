class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :restaurant
      t.belongs_to :user
      t.integer :rating, null: false
      t.text :content, null: false
      t.date :date

      t.timestamps
    end
  end
end
