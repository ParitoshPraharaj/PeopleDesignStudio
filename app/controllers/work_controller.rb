class WorkController < ApplicationController
	
	def new
		@work = Work.new
	end
	
	def show
		@work = Work.create	
	end	
	
	private
	
	def required_params_method_for_creating_a_work_record
		params.require(:work).permit(:what)
	end	
		
	
	
	
	
	
	
.>
	
	
	
end
