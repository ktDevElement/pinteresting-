class User < ApplicationRecord
  # attr_accessor :email, :password, :password_confirmation
  # validates :password, :presence => true,
  # 					   :confirmation => true, 
  # 					   :length => {:within => 6..40},
  #                      :on => :create, 
  #                      :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/ }
  
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable 

end
