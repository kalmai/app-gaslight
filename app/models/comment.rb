class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  belongs_to :user

  validates :body, presence: true

  def upvoter(user_id)
    upvotes = self.upvote
    downvotes = self.downvote
    if downvotes.include?(user_id)
      downvotes.delete(user_id)
      upvotes.push(user_id)
    elsif upvotes.include?(user_id)
      upvotes.delete(user_id)
    else
      upvotes.push(user_id)
    end
    self.save
  end

  def downvoter(user_id)
    upvotes = self.upvote
    downvotes = self.downvote
    if upvotes.include?(user_id)
      upvotes.delete(user_id)
      downvotes.push(user_id)
    elsif downvotes.include?(user_id)
      downvotes.delete(user_id)
    else
      downvotes.push(user_id)
    end
    self.save
  end


end

