class ChangeDataPostToUserId < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :user_id, :integer, limit: 8
  end
end
