require 'rubygems'
require 'sinatra'
require 'haml'

# class HiSinatra < Sinatra::Base
# 	get '/' do
# 		"Hey Sinatra!"
# 	end

# 	get '/hi' do
#     "Hello World"
#     end

#      get '/:age' do
#      "Hi,I'm #{params[:age]} years old"
#     end

    # get '/hello/:name' do
    # "Hello #{params['name']}!"
    # end	

    # get '/download/*.*' do
    # # matches /download/path/to/file.xml
    # params['splat'] # => ["path/to/file", "xml"]
    # end
    # get '/download/*.*' do |path, ext|
    # [path, ext] # => ["path/to/file", "xml"]
    # end
    # get /\A\/hello\/([\w]+)\z/ do
    #  "Hello, #{params['captures'].first}!"
    # end
     class HiSinatra < Sinatra::Base
     get '/posts.?:format?' do
     # matches "GET /posts" and any extension "GET /posts.json", "GET /posts.xml" etc.
     end
     end
    # get %r{/hello/([\w]+)} do |c|
    # # Matches "GET /meta/hello/world", "GET /hello/world/1234" etc.
    # "Hello, #{c}!"
    # end


    # get '/hello/:name' do |n|
    # 	"Hello #{n}!"
    # end

#     get '/reverse/:string' do
#     	params['string'].reverse
#     end

#      get '/upcase/:string' do
#     	params['string'].upcase
#     end
    
#     get '/say/*/to/*' do
#     	params['splat']
#     end

# end
# get '/' do 
#  @title = "Home Page" 
#  haml :index 
# end

# get '/about' do 
# 	@title = "About Us"
# 	haml :about 
# end

# get '/contact' do 
# 	@title = "Contact Us"
# 	haml :contact 
# end

# __END__

# @@layout 
# %html 
# %body 
#    = yield

# @@index 
# %h1 Welcome to Our Site

# @@about 
# %h1 About Our Site

# @@contact 
# %h1 Contact Us

# @@index 
# %html 
# %body 
# %h1 Welcome to Our Site

# @@about 
# %html 
# %body 
# %h1 About Our Site

# @@contact 
# %html 
# %body 
# %h1 Contact Us
