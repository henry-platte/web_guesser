require 'sinatra'
require 'sinatra/reloader'
get '/' do
  number = rand(100)
  guess = params['guess'].to_i
  if guess > number
    message = "Too high!"
  elsif number > guess
    message = "Too low!"
  else message = "You're right!"
end
  erb :index, :locals => {:number => number, :message => message}
end
