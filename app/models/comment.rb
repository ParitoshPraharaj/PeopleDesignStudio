class Comment < ActiveRecord::Base
	belongs_to :blog
	before_create :downcapitalize_name
		
	validates :name, :content, presence: true
	
	protected
	
	def downcapitalize_name
		self.name = self.name.titleize
	end	
	
	
end
