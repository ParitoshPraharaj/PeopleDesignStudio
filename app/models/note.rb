class Note < ActiveRecord::Base
		
	def titles_in_urls
		title.downcase.gsub(" ","-")
	end
	
	
	
end
