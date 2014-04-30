class WhatsHappeningAroundTheWorld < ActiveRecord::Base

	validates :title, :content, :image, presence: true
	
end
