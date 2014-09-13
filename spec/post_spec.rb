require 'spec_helper'
require_relative '../app/models/post'

describe Post do

	it 'should have a body' do
		post = Post.new(body: "I am a new post!")
		expect(post.body).to eq "I am a new post!"
	end

end
