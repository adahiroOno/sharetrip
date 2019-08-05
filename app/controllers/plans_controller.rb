class PlansController < ApplicationController
  def create
    @plan = PlanDetail.new(plan_params)
    @plan.save!
    calc_data(@plan)
    redirect_to edit_post_path(@plan.post_id)
  end

  def show
    @detail = PlanDetail.find(params[:id])
  end

  def update
    @detail = PlanDetail.find(params[:id])
    @detail.update_attributes(plan_params)
    calc_data(@detail)
    redirect_to edit_post_path(@detail.post_id)
  end

  def destroy
    @plan = PlanDetail.find(params[:id])
    @plan.destroy!
    calc_data(@plan)
    redirect_to edit_post_path(@plan.post_id)
  end

  def calc_data(data)
    plan = PlanDetail.where(post_id: data.post_id)
    cost = plan.sum(:cost)
    post = Post.find(data.post_id)
    post.total_cost = cost
    post.save!
    post.start_date = plan.minimum(:start_date)
    post.close_date = plan.maximum(:close_date)
    post.save! unless post.start_date.nil? || post.close_date.nil?
  end

  private

  def plan_params
    params.require(:plan_detail).permit(:plan_title, :user_id, :post_id, :content, :plan_title, :start_point, :goal_point, :duration, :start_date, :close_date, :cost)
  end
end
