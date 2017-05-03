require 'sinatra'
require 'sinatra/reloader'
require './lib/animal_shelter'
require 'pry'
require 'pg'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
