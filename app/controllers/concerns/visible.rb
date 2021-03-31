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
  end
end

