class StaticPagesController < ApplicationController
	
	def blog_admin
		@posts = Post.all
		p "*" * 50
		p @posts
		p "*" * 50
		
    @category = Category.new
  end

end