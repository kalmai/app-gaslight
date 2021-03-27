class Article < ApplicationRecord
  validates :user_id, presence:true
  validates :title, presence:true
  validates :body, presence:true, length: { minimum: 10 }
end
