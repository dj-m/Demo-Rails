post '/sessions' do
  if user = User.find_by(username: params[:user][:username]).try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect "/"
  else
    flash[:error] = "Username or password is incorrect"
    redirect "/login"
  end
end

delete '/sessions' do
  session.clear
  flash[:message] = "Logged out. Come back soon!"
  redirect '/'
end
