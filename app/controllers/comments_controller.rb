class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
    
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(user_params)
    if @comment.save
      redirect_to(:back)
    else
      
    end
  end

  private

  def user_params
    params.require(:comment).permit(:body)
  end

end