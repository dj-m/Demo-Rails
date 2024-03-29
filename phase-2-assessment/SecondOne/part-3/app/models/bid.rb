class Bid < ActiveRecord::Base
  belongs_to :bidder, class_name: :User
  belongs_to :item

  validates_presence_of :price
end
