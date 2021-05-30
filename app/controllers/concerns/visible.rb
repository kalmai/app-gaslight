module Visible
  extend ActiveSupport::Concern
  class_methods do
    def public_count
      Article.count
    end

    def logged_in?(user_id)
      where(id: user_id).exists?
    end

    def author?(current_user_id, author_id)
      current_user_id == author_id
    end

    def random_article_id
      arr = Article.all.each.with_object([]) { |a, array| array.push(a.id) }
      arr.sample
    end

    def upvote(user_id, comment)
      comment.upvote.push(user_id)
      comment.save
    end
  end
end

