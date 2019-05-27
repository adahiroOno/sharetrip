class PostsController < ApplicationController
  before_action :set_current_user
  def index
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_index_path
  end

  private

  def post_params
    params.require(:post).permit!
  end
end
