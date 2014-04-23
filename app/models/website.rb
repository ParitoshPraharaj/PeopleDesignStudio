class Website < ActiveRecord::Base
	validates :people_name, presence: true
end
