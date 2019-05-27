class CreatePlanDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_details do |t|
      t.bigint :user_id
      t.bigint :post_id
      t.string :content
      t.string :plan_title
      t.string :start_point
      t.string :goal_point
      t.time :duration
      t.datetime :start_date
      t.datetime :close_date
      t.bigint :cost

      t.timestamps
    end
  end
end
