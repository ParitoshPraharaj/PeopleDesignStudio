class People < ActiveRecord::Base
	# May not be Required
	has_many :tasks	
	has_many :websites
		
	has_secure_password validations: false
	
	# validates :email, presence: true, uniqueness: {case_sensitive: false}
	
	#Validation for Length of the Password to be Added.
	
	validates :password, presence: true
	
end
