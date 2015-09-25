get "/users/new" do
  erb :"new_user"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/reviews'
  else
    @error = "username or password invalid"
    erb :"new_user"
  end
end

get '/users/:user_id/restaurants' do
  @user = User.find(session[:user_id])
  erb :'users/user_reviews'
end

# get '/users/:user_id/restaurants/:restaurant_id/edit' do
#   @user = User.find(session[:user_id])
#   @review = Review.find(params[:review_id])
#   "Edit Restaurant"
# end
