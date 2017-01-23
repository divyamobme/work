require 'rest-client'
class Url
def token
read_file='token.txt'
token ="this_is_a_token"
File.readlines(read_file).each do |line|
 
  ans = RestClient::Request.execute(:method=> :post, :url=> 'https://iid.googleapis.com/iid/v1:batchAdd',:payload=> {to: "/topics/movies", registration_tokens: token,line: line}, :headers=> {Authorization:{:key =>  'AIzaSyDM6bOaxHzUbTMQ98A6JHaTV0RAjwgZssI'}})
puts ans.inspect
break
 end 
end 
end
u=Url.new
u.token()