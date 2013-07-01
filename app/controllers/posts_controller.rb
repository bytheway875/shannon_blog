class PostsController < ApplicationController

	def index
		@name = "Shannon"
		@posts = Post.all
	end

	def create
		Post.create(person_params)
	end

	end

	private
		def post_params
			params.require(:title, :body);
end