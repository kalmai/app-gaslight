class User < ApplicationRecord
  include Visible

  has_many :articles, dependent: :delete_all
  has_many :comments, dependent: :delete_all

  validates :username, presence:true, uniqueness:true
  validates :password, presence:true



end
