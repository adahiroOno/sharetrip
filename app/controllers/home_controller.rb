class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  def index
    @posts = Post.order(:created_at).page(params[:page])
    @detail = PlanDetail.all
  end
end
