# myapp.rb
require 'sinatra/base'


class Chittr < Sinatra::Base

	get '/' do
	  'Hello world!'
	end

run! if app_file == $0

end