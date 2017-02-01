require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:User.sqlite3"


get '/' do
@user = User.find(2)
haml :home
end
# get '/' do
# @user = User.all
# haml :home
# end

get '/home/:id' do
  @user = User.find(params[:id])
  haml :home
end

