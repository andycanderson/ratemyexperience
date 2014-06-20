class Comment
	include Mongoid::Document

	field :text, type: String
	field :rating, type: Integer

end