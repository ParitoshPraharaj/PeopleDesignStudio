class Blog < ActiveRecord::Base
		
	def better_title
		title.downcase.gsub(" ", "-")
	end

end
