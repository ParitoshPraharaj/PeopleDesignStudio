class People < ActiveRecord::Base
	has_many :tasks
	has_many :projects
	#accepts_nested_attributes_for :projects
	
	has_secure_password
end
