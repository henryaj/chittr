require 'rubygems'
require 'sinatra/base'
require 'sinatra/flash'
require 'data_mapper'
require 'haml'

DataMapper.setup(:default, "postgres://localhost/chittr")

require_relative './models/user'
require_relative './models/post'

DataMapper.finalize
DataMapper.auto_upgrade!

class Chittr < Sinatra::Base

	enable :sessions
	register Sinatra::Flash

	get '/' do
		current_uid = session['user_id']
		current_user = User.first(:id => current_uid)
		@user = current_user
		@posts = Post.all
	  @post_bodies = @posts.map {|p| p.body}
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
		unless @user == nil
			session["user_id"] = @user.id
			flash.now[:notice] = "Welcome back, #{@user.firstname}."
			haml :index
		else
			flash[:error] = "There was something wrong with your credentials. Please try again."
		end
	end

	get '/logout' do
		@user = User.first(:id => session["user_id"])
		flash.now[:notice] = "See you later, #{@user.firstname}."
		session["user_id"] = nil
		haml :index
	end

	get '/new' do
		haml :newcheet
	end

	post '/new' do
		Post.create(:body => params["New Cheet"], :user_id => session["user_id"])
		flash[:notice] = "Your cheet has been posted."
		redirect to '/'
	end


run! if app_file == $0

end