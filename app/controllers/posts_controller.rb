class PostsController < ApplicationController
	http_basic_authenticate_with :name => "lemonadeBlog", :password => "weRockEvenMore"
	
	def index
		@posts= Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
		@categories = Category.all
	end

	def create
		p params
		p "*" * 100
		p current_user.email
		p "*" * 100
		@post = Post.create(title:params[:post][:title], body:params[:post][:body], user_id:current_user.id)
		
		if @post.save
			params[:post][:category_ids].each do |cat|
				
				@post.categories << Category.find(cat.to_i)
			end
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