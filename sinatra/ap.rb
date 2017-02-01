require 'rubygems'
require 'sinatra'
require 'haml'
# require 'json'

# get '/' do
#   haml :ind
# end


class MyApp < Sinatra::Base
  get '/template' do
    @foo = 'hello'
    haml :index
  end
end

# run MyApp.run!


# get '/example.json' do
#   content_type :json
#   { :key1 => 'value1', :key2 => 'value2' }.to_json
# end


# get '/hello-world.json' do
#   content_type :json # Content-Type: application/json;charset=utf-8

#   # Use to_json to generate JSON based on the Ruby hash
#   {greeting: 'Hello World!'}.to_json
# end
# post '/payload' do
#   push = JSON.parse(request.body.read)
#   puts "I got some JSON: #{push.inspect}"
# end