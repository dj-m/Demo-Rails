get '/users/new' do
  erb :'/users/new'
end

get '/users/:id' do
  if !current_user
    flash[:message] = "You must login or register to view this page."
    redirect '/'
  else
    @items = current_user.items
    @bid_items = current_user.bidded_items
    @won_items = current_user.item_winner
  end
  erb :'/users/show'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    flash[:message] = 'Account created!'
    redirect '/'
  else
    flash[:errors] = user.errors.full_messages
    redirect '/users/new'
  end
end
