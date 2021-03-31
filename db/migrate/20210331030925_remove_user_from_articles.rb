class RemoveUserFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :user, :string
  end
end
