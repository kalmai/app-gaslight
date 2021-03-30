class User < ApplicationRecord
  include Visible

  validates :username, presence:true
  validates :password, presence:true



end
