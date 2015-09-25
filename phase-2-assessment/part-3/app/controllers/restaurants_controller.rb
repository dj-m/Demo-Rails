get '/restaurants' do
  # @user = User.find(session[:user_id])
  @restaurants = Restaurant.all
  erb :"restaurants/index"
end

post '/restaurants' do

  if current_user
    @user = User.find(session[:user_id])
    @city = City.create(name: params[:city][:name], state: params[:city][:state])
    @restaurant = Restaurant.create(name: params[:restaurant][:name], city: @city)
    @review = Review.create(user: @user, date: Time.now, restaurant: @restaurant, rating: params[:review][:rating], content: params[:review][:content])
    redirect '/restaurants'
  else
    erb :"unauthorized"
  end

end

get '/restaurants/:id/edit' do
  @restaurant = Restaurant.find_by(id: params[:id])

  if current_user && @entry.user_id == current_user.id
    erb :"restaurants/edit"
  else
    erb :"unauthorized"
  end

end

put '/restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])
  @restaurant.update_attributes(params[:restaurant])
  redirect "/restaurants/#{@restaurant.id}"
end

delete '/restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])
  if current_user && @restaurant.user_id == current_user.id
    @restaurant.destroy
    @restaurant.reviews.each do |tag|
      review.destroy
    end
    redirect "/"
  else
    erb :"unauthorized"
  end
end
