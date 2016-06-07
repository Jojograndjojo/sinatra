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
