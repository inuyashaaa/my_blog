class CommentsController < ApplicationController
  before_action :find_post

  def create
    @comment = @post.comments.build comment_params
    @comment.user_id = current_user.id

    if @post.save
      flash.now[:success] = t ".create_success"
      respond_to do |format|
        format.html do
          redirect_to :back
        end
        format.js
      end
    else
      flash[:error] = t ".create_error"
    end

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
