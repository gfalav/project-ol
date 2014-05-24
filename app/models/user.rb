class User < ActiveRecord::Base

	validates :nombre, presence: true, uniqueness: true
	validates :email, presence:true, uniqueness:true
	validates :password_digest, presence:true
	
  	has_secure_password

  	belongs_to :empresa
end
