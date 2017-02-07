class Tourist < ApplicationRecord
	
	before_save { email.downcase! }
	# Regex for the pattern that emails 
	Reg_email = /\A[\w+\-.]+@[a-z\d\-.]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	
	validates :fullname,
				presence: true,  
				length: { maximum: 50 }, 
				format: { with: /\A[a-zA-Z ]+\z/, message: "only allows letters" }
	 
	 validates :email, 
	 			presence: true, 
	 			format: { with: Reg_email, message: "Not a valid E-mail " }, 
	 			uniqueness: { case_sensitive: false }

	 validates :telephone, 
	 			presence: true
end
