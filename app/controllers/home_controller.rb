class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  def index
    @post = Post.all
    @detail = PlanDetail.all
  end
end
