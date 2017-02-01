require 'rest-client'
class Url
def token
read_file='token.txt'
#token =["f1TjDv3wD0I:APA91bEo-VniHRVUgeyhefCRJTFIVKwNbxW39klLFpejidq4e0OQMPZr8XfVZEWhVdfYaLOk2b64OWip1LvP1wcdMxSfX4JO5QrQQwfT6IOOWJcvl11Gk3vJLaqhroyuesz7wHR_cVr-"]
File.readlines(read_file).each do |line|
 
  ans = RestClient::Request.execute(:method=> :post, :url=> 'https://iid.googleapis.com/iid/v1:batchAdd',:body=> {"to": "/topics/movies", "registration_tokens": ["f1TjDv3wD0I:APA91bEo-VniHRVUgeyhefCRJTFIVKwNbxW39klLFpejidq4e0OQMPZr8XfVZEWhVdfYaLOk2b64OWip1LvP1wcdMxSfX4JO5QrQQwfT6IOOWJcvl11Gk3vJLaqhroyuesz7wHR_cVr-"],"line": line}, :headers=> {Authorization:{:key =>  'AIzaSyDM6bOaxHzUbTMQ98A6JHaTV0RAjwgZssI'}})
puts ans.inspect
break
 end 
end 
end
u=Url.new
u.token()