class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @post = current_user.posts.build
      @feed_items = current_user.load_feed.paginate(page: params[:page])
        .per_page Settings.user.per_page
    end
  end

  def help; end

  def about; end

  def contact; end
end
