class AddColumnPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user_id, :integer, :null => false
    add_column :posts, :content, :string, :null => false
    add_column :posts, :trip_title, :string, :null => false
    add_column :posts, :total_cost, :integer
    add_column :posts, :start_date, :datetime
    add_column :posts, :close_date, :datetime
  end
end
