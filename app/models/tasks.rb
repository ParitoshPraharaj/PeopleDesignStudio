class Tasks < ActiveRecord::Base
	belongs_to :people
	belongs_to :project
end
