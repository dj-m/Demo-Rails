class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :cuisine, null: false
      t.string :address, null: false
      t.belongs_to :city
      t.string :state, null: false
      t.integer :zip, null: false

      t.timestamps
    end
  end
end
