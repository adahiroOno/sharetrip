class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  def index
    @post = Post.all
  end
end
