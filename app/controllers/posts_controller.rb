class PostsController < ApplicationController
  def index
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end
  # def new
  #   @post = Post.new
  # end

  def create
    @post = Post.new(post_params)
    @post.save!
    respond_to do |format|
      format.html 
      format.js { render :test_create }
    end

  end

  def edit
    @post = Post.find(params[:id])
    @detail = PlanDetail.where(post_id: params[:id]) 
    @plan = PlanDetail.new
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to edit_post_path(@post)
  end


  private

  def post_params
    params.require(:post).permit!
  end 

  def plan_params
  end
end
