class PlansController < ApplicationController
  def create
    @plan = PlanDetail.new(plan_params)
    @plan.save!
    redirect_to edit_post_path(@plan.post_id)
  end

  def show
    @detail = PlanDetail.find(params[:id])
  end

  def update
    @detail = PlanDetail.find(params[:id])
    @detail.update_attributes(plan_params)
    redirect_to edit_post_path(@detail.post_id)
  end

  def destroy
    @plan = PlanDetail.find(params[:id])
    @plan.destroy!
    redirect_to edit_post_path(@plan.post_id)
  end

  private

  def plan_params
    params.require(:plan_detail).permit!
  end
end
