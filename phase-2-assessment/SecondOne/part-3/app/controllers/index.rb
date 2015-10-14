get '/' do
  redirect '/items'
end

get '/login' do
  erb :'/users/login'
end
