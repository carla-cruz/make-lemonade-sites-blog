class PostsController < ApplicationController

	def index
		@posts= Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		p params
		p "*" * 100
		@post = Post.create(title:params[:post][:title], body:params[:post][:body])
		if @post.save
			redirect_to @post
		else
			redirect_to root_path
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update_attributes(title:params[:post][:title], body:params[:post][:body])
				if @post.save
			redirect_to @post
		else
			redirect_to root_path
		end
	end

	def destroy
	@post = Post.find(params[:id])
	@post.destroy
	redirect_to blog_admin_path
	end



end