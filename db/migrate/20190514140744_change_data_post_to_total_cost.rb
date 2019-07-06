class ChangeDataPostToTotalCost < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :total_cost, :integer, limit: 8
  end
end
