class Item < ActiveRecord::Base
  belongs_to :user
  has_many :bids
  has_many :bidders, through: :bids

  validates_presence_of :title, :description, :start_date, :end_date, message: "field can't be empty"

  def active?
    start_date <= Date.today && end_date >= Date.today
  end

  def self.active_items
    self.select { |item| item.active? }
  end

  def highest_bid
    bids.pluck(:price).max
  end

  def highest_bidder
    bids.sort { |bid1, bid2| bid2 <=> bid1 }.last.bidder
  end
end
