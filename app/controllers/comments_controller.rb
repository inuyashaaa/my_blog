class CommentsController < ApplicationController
  before_action :find_post

  def create
    @comment = @post.comments.build comment_params
    @comment.user_id = current_user.id

    if @post.save
      flash[:success] = "Created Comment <3"
    else
      flash[:error] = "Opps!!! Can not create comment!"
    end
    redirect_to user_path @post.user_id
  end

  def destroy
    @comment = @post.comments.find_by id: params[:id]
    @comment.destroy ? flash[:success] = "Comment deleted!" : flash[:error] = "Can not delete comment"
    redirect_to user_path @post.user_id
  end

  private

  def comment_params
    params.require(:comment).permit :content
  end

  def find_post
    @post = Post.find_by id: params[:post_id]
  end
end
