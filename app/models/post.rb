class Post

	include DataMapper::Resource

	property :id, Serial
	property :body, Text
	property :created_at, DateTime
	property :created_on, Date
	
	belongs_to :user

end