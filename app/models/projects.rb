class Projects < ActiveRecord::Base
	belongs_to :world
	has_many :work
	has_many :ideas
	accepts_nested_attributes_for :people
	
	def finish_a_project
		@hours = 10
		@days = 5
		@type_of_project = 'Small'
		@heroku_hosting = 40
		@total_bill = 310
		@message = puts "Your project is: #{@type_of_project}. Number of days it took to complete it is #{5} days. Your bill - #{@heroku_hosting + @total_bill}"
		return @message
	end
	
end
