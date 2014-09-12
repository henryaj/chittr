DataMapper.setup(:default, "postgres://localhost/chittr")

require 'rubygems'
require 'sinatra/base'
require 'rack-flash'
require 'data_mapper'
require 'haml'

require_relative './models/user'

DataMapper.finalize
DataMapper.auto_upgrade!

class Chittr < Sinatra::Base

	enable :sessions
  use Rack::Flash

	get '/' do
	  haml :index
	end

	get '/users/new' do
		haml :user_signup
	end

	post '/users/new' do
		flash[:notice] = "Welcome to chittr, Henry!"
		haml :index
	end

run! if app_file == $0

end