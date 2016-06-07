require 'sinatra'
set :session_secret, 'super secret'
get '/' do
  "Hello World"
end

get '/secret' do
  "I can't tell you"
end

get '/Michael' do
  "Random stuff !!!"
end

get '/random-cat' do
  @cat_name = ['Slim Shady', 'What', 'Who'].sample
  erb(:index)

end

get '/name-cat' do
  p params[:name]
  @cat_name = params[:name]
  erb(:index)
end
