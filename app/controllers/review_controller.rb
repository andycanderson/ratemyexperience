class ReviewController < ApplicationController
	def index
		@comment = Comment.all
		total_reviews = Comment.count
		average=0
		@comment.each do |x|
			average += x.rating
		end
		if total_reviews==0
			@average="no ratings"
		else
			@average="%.1f" % (average/total_reviews)
		end
	end

	def create
		comment = Comment.new
		comment.text = params[:comment][:text]
		comment.rating = params[:comment][:rating]
		comment.save!

		redirect_to '/'
	end

end