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
    @post = Post.find(params[:id])
  end

end
