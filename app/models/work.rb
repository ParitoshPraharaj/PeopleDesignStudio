class Work < ActiveRecord::Base
	belongs_to :people
	belongs_to :website
	has_many :tasks
end
