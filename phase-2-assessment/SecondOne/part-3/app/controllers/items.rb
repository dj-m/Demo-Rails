get '/items' do
  @items = Item.all
  erb :'/index'
end

get '/items/new' do
  if logged_in?
    @item = Item.new
  else
    flash[:message] = "You must login or register to view this page."
    redirect '/'
  end
  erb :'/items/new'
end

post '/items' do
  item = current_user.items.build(params[:item])
  if item.save
    redirect "/users/#{current_user.id}"
  else
    flash[:errors] = item.errors.full_messages
    redirect '/items/new'
  end
end

get '/items/:id' do
  if logged_in?
    @item = Item.find(params[:id])
  else
    flash[:message] = "You must login or register to view this page."
    redirect '/'
  end
  erb :'/items/show'
end

get '/items/:id/edit' do
  @item = Item.find_by(id: params[:id])
  erb :'/items/edit'
end

put '/items/:id' do
  item = Item.find_by(id: params[:id])
  item.assign_attributes(params[:item])
  if item.save
    flash[:message] = "Item updated!"
    redirect "/users/#{current_user.id}"
  else
    flash[:errors] = item.errors.full_messages
    redirect "/users/#{current_user.id}"
  end
end

delete '/items/:id' do
  item = Item.find_by(id: params[:id])
  item.destroy
  flash[:message] = "Item removed"
  redirect "/users/#{current_user.id}"
end
