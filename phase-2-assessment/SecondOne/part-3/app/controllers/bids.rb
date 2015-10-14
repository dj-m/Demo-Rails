post '/items/:id/bids' do
  # item = current_user.items.find_by(id: params[:id])
  item = Item.find_by(id: params[:id])
  bid = item.bids.build(params[:bid].merge(bidder: current_user))
  if bid.save
    redirect "/items/#{item.id}"
  else
    flash[:error] = "couldn't save bid"
    redirect "/items/#{item.id}"
  end
end
