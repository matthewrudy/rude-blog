class LegacyController < ApplicationController
  # this controller just exists to forward permanent redirects on old tumblr urls

  def rss
    redirect_to posts_path(:format => "atom"), :status=>:moved_permanently
  end

  # GET /post/12311/some-permalink
  # GET /post/12311
  def post
    @post = Post.find_by_legacy_id!(params[:id])
    redirect_to post_path(@post), :status => :moved_permanently
  end

end
