class RemoveUserIdFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :user_id, :numeric
  end
end
