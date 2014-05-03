class Note < ActiveRecord::Base
	
	vaidates :title, :content, presence: true
	
	extends FriendlyId
	friendly_id :title, use: :slugged
	
end
