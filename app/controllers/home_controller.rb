class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  def index
    @post = Post.all.order(created_at: "DESC")
    @detail = PlanDetail.all
  end
end
