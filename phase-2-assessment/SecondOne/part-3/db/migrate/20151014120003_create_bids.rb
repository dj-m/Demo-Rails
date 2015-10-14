class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :price, null:false

      t.belongs_to :item
      t.belongs_to :bidder
      t.timestamps null:false
    end
  end
end
