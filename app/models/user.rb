class User < ActiveRecord::Base

  validates :nome, presence: true
  validates :rf, presence: true
  validates :tipo, presence: true
  has_secure_password
 
end
