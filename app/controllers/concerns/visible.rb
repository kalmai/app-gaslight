module Visible
  extend ActiveSupport::Concern
  class_methods do
    def public_count
      where(status: 'public').count
    end

    def logged_in?(user_id)
      where(id: user_id).exists?
    end
  end
end

