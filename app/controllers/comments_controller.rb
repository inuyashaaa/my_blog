class CommentsController < ApplicationController
  before_action :find_post

  def create
    @comment = @post.comments.build comment_params
    @comment.user_id = current_user.id

    if @post.save
      flash[:success] = t ".create_success"
    else
      flash[:error] = t ".create_error"
    end
    redirect_to user_path @post.user_id
  end

  def destroy
    @comment = @post.comments.find_by id: params[:id]
    @comment.destroy ? flash[:success] = t(".delete_success") : flash[:error] = t(".delete_error")
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
