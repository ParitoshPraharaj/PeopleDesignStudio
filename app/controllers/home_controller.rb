class HomeController < ApplicationController
  
  def index
	@blog = Blog.order(created_at: :desc).limit(2)
  end
  
end
