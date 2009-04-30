class PostsController < ApplicationController

  caches_page :index, :show

  def index
    @posts = Post.find(:all, :order => "created_at DESC")

    respond_to do |format|
      format.html
      format.atom
    end
  end

  def show
    if legacy_id = params[:legacy_id]
      @post = Post.find_by_legacy_id!(legacy_id)
    else
      @post = Post.find(params[:id])
    end
  end

end
