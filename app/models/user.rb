class User < ActiveRecord::Base

  validates :rf, presence: true 
  has_secure_password
 
end
