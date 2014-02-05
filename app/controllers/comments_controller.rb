class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
  end

  def create
    p "yup here that's for sure"
    @post = Post.find(params[:post_id])
    p "yup here TOO that's for sure"
    @comment = @post.comments.create!(comment_params)
    respond_to do |format|
      p "yup here AND IN THE RESPOND TO"
      format.html { redirect_to @post }
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end