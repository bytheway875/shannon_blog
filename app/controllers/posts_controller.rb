class PostsController < ApplicationController

	def index
		@name = "Shannon"
		@posts = Post.all

		respond_to do |format|
			format.html
			format.json {render json: @posts}
		end
	end

	def create
		Post.create(person_params)
	end

	def show
		@post = Post.find(params[:id])

		respond_to do |format|
			format.html
			format.json {render json: @post}
		end

	end

	private
		def post_params
			params.require(:title, :body);
		end
end