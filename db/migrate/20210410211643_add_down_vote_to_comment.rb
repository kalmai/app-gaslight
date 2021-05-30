class AddDownVoteToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :downvote, :integer, array: true, default: []
  end
end
