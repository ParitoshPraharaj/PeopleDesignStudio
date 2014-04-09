class PeopleController < ApplicationController
	
	#Method for Signups and Logging In
	
	respond_to :html, :js, :json
	
	def index
		@people = People.all
	end
	
	def new
		@people = People.new
	end
	
	def create
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
	
	def fields_for_project_form
		
	end
	
end












