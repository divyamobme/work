require 'sinatra'
require 'sinatra/activerecord'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "test.db"
)
class Article < ActiveRecord::Base
end