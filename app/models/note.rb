class Note < ActiveRecord::Base
	
	validates :title, :content, presence: true
	
	extends FriendlyId
	friendly_id :title, use: :slugged
	
end
