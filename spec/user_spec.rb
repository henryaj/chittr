require 'spec_helper'
require_relative '../app/models/user'

describe User do
	
	# let(:user) { User.new }

	it 'should have firstname, lastname, email, username and password digest' do
		user = User.new(firstname: "Henry", lastname: "Stanley", username: "henryaj", email: "henry@henrystanley.com", password: "12345")
		expect(user.firstname).to eq "Henry"
		expect(user.lastname).to eq "Stanley"
		expect(user.username).to eq "henryaj"
		expect(user.email).to eq "henry@henrystanley.com"
		expect(user.password_digest).to eq "12345" # uses bcrypt == for comparison
	end

	xit 'should have a unique email address' do
	end

	xit 'should have a unique username' do
	end

end