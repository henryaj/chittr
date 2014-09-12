# myapp.rb
require 'rubygems'
require 'sinatra/base'
require 'haml'


class Chittr < Sinatra::Base

	get '/' do
	  haml :index
	end

run! if app_file == $0

end