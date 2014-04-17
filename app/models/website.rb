class Website < ActiveRecord::Base
	validates :people_name, :people_email, :website_name, :website_description, presence: true
end
