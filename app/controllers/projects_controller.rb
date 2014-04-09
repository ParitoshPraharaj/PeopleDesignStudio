class ProjectsController < ApplicationController

	#Methods for Projects Controller - CRUD and Custom Methods
	
	#Respond to block for automatically redirecting and rendering javascript, xml or json
	
	respond_to :html, :json, :js
	
	
	
	def new
		@project = Project.new
	end
	
	def create
		@project = Project.new(needed_parameters_for_the_project_and_people_model_form)
		
=begin		while params[:controller] == 'Projects' do
			@result_of_params = "It is a project controller."
			redirect_to lets-begin-work(@result_of_params)
			end	
=end			
		if @project.save
			#Rails function for returning the last saved record
			redirect_to lets_begin_work_path
		else
			redirect_to lets_start_again_path
		end	
	end
	
	def show
		@project = Project.find(params[:id])
	end
	
	def lets_begin_work
		
	end	
	
	def lets_start_again
		
	end
	
	private
	
	#This method only allows to save form fields which are passed to the require params.
	
	def needed_parameters_for_the_project_and_people_model_form
		params.require(:project).permit(:project_name, :project_description, :name, :email)
	end	
	
end
