class AddStatusToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :string, :string
  end
end
