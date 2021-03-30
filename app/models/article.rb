class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :user_id, presence:true
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  def avg_rating
    comments.average(:rating).to_i
  end

end

