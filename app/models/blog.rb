class Blog < ActiveRecord::Base
	
	has_many :comments
	validates :title, :content, presence: true
	
	after_create :add_slug_to_blog_post
	after_update :add_slug_to_blog_post
	
	protected
	
	def add_slug_to_blog_post
		self.slug = title.downcase.gsub(" ","-")
	end

end
