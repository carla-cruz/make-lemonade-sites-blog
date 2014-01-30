class StaticPagesController < ApplicationController
	
	http_basic_authenticate_with :name => "lemonadeBlog", :password => "weRockEvenMore"

	def blog_admin
		@posts = Post.all
		p "*" * 50
		p @posts
		p "*" * 50
		
@category = Category.new
	end

end