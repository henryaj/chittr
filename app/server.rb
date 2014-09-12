
require 'rubygems'
require 'sinatra/base'
require 'sinatra/flash'
require 'data_mapper'
require 'haml'

DataMapper.setup(:default, "postgres://localhost/chittr")

require_relative './models/user'

DataMapper.finalize
DataMapper.auto_upgrade!

class Chittr < Sinatra::Base

	enable :sessions
	register Sinatra::Flash

	get '/' do
		current_uid = session['user_id']
		current_user = User.first(:id => current_uid)
		@user = current_user
	  haml :index
	end

	get '/users/new' do
		haml :user_signup
	end

	post '/users/new' do
		@user = User.create(:firstname => params[:"First Name"],
											 :lastname => params[:"Last Name"],
											 :email => params[:"Email"],
											 :username => params[:"Username"],
											 :password => params[:"Password"],
											 :password_confirmation => params[:"Password Confirmation"])
		session["user_id"] = @user.id
		flash.now[:notice] = "Welcome to chittr, #{@user.firstname}!"
		haml :index
	end

	get '/login' do
		haml :user_signin
	end

	post '/login' do
		@user = User.first(:username => params[:"Username"])
		flash.now[:notice] = "Welcome back, #{@user.firstname}"
		haml :index
	end


run! if app_file == $0

end