require 'bcrypt'

class User

	include DataMapper::Resource

	attr_reader :password
	attr_accessor :password_confirmation

	property :id, Serial
	property :firstname, String
	property :lastname, String
	property :email, String
	property :username, String
	property :password_digest, Text

	has n, :posts

	validates_confirmation_of :password

	def password=(password)
		self.password_digest = BCrypt::Password.create(password)
	end

	def self.authenticate(username, password)
		user = first(:username => username)
		if user && BCrypt::Password.new(user.password_digest) == password
			user
		else
			nil
		end
	end



end