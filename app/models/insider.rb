class Insider < ApplicationRecord
	#Tests and Validations
	has_many :tours
	before_save { email.downcase! }
	
	Reg_email = /\A[\w+\-.]+@[a-z\d\-.]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	
	validates :fullname,
				presence: true,  
				length: { maximum: 50 }, 
				format: { with: /\A[a-zA-Z ]+\z/, message: "only allows letters and spaces" }
	 
	 validates :email, 
	 			presence: true, 
	 			format: { with: Reg_email, message: "This is not a valid  Email Address"}, uniqueness: { case_sensitive: false }

	 validates :telephone, 
	 			presence: true,
	 			uniqueness: true

	 validates :national_id, 
	 			presence: true,
	 			uniqueness: true

	 validates :price,
	 			presence: true

end
