class Tasks < ActiveRecord::Base
	belongs_to :project, :people
end
