class PeopleController < ApplicationController
	
	#Method for Signups and Logging In
	
	respond_to :html, :js, :json
	
	def index
		@people = People.all
	end
	
	def new
		@people = People.new
	end
	
	def lets_get_started
	
	end
	
	def create
		@people = People.new(required_parameters_for_saving_a_project_through_the_form)		
		if @people.save
			#Rails function for returning the last saved record
			redirect_to lets_begin_work_path
		else
			redirect_to lets_get_started_path
		end	
	end	
	
	def signup
		@people = People.new(fields_for_signup)
		flash[:success] = "Hey, you just signed up. Lets get started right away working on your website." if @people.save
		redirect_to notes_path
	end
	
	def show
		@people = People.find(params[:email])
		respond_with(@people)
	end
	
	private
	
	def fields_for_signup
		params.require(:people).permit(:email, :password_digest)
	end
	
	# Method for Saving Projects
	
	def required_parameters_for_saving_a_project_through_the_form
		params.require(:people).permit(:name, :email, :projects_attributes)
	end

	
end












