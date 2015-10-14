class User < ActiveRecord::Base
  has_secure_password
  has_many :items
  has_many :bids, foreign_key: :bidder_id
  has_many :bidded_items, through: :bids, source: :item

  validates_presence_of :username, message: "field must be filled out"
  validates_uniqueness_of :username, message: "already taken"
  validates :password, presence: { on: :create }, length: { minimum: 6, too_short: "must be 6 characters long" }

  def bidded?(item)
    bidded_items.include?(item)
  end

  def active_item
    items.select { |items| item.start_date >= Date.today}
  end

  def inactive_item
    items.select { |items| item.end_date < Date.today }
  end

  def item_winner
    bidded_items.select { |item| item.highest_bidder == self && item.end_date < Date.today }
  end
end
