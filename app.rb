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

post '/name-cat' do
  @cat_name = params[:name]
  p params
  erb(:index)
end

get '/form' do
  erb(:form)
end
