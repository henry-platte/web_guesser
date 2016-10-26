require 'sinatra'
require 'sinatra/reloader'
get '/' do
  "The secret number is " + String(rand(101)) +"!"
end
