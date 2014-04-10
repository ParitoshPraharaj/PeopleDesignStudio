class ProjectsController < ApplicationController

	#Methods for Projects Controller - CRUD and Custom Methods
	
	#Respond to block for automatically redirecting and rendering javascript, xml or json
	
	respond_to :html, :json, :js	
	
	def new
		@project = Project.new
	end
	
	def create
		
	end
	
	def show
		@project = Project.find(params[:id])
	end
	
	def lets_begin_work
		
	end	
	
	def lets_start_again
		
	end









	
	
end
