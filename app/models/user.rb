class User < ApplicationRecord
 validates :password, :presence => true,
                     :on => :create,
                     :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
