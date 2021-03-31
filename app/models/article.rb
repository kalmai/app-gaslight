class Article < ApplicationRecord
  include Visible
  belongs_to :user, foreign_key: "author_id"

  has_many :comments, dependent: :delete_all

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  def avg_rating
    comments.average(:rating).to_i
  end

end

