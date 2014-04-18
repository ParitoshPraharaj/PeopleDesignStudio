class PeopleController < ApplicationController
	
	#Method for Signups and Signing In
	
	respond_to :html, :js, :json
	
	def index
		@people = People.all
	end
	
	def new
		@people = People.new
	end	
	
	def create
		@people = People.create(fields_for_signup)
		logger.debug "A Person with an Email Id: #{@people.attributes.inspect} Signed Up. #{ @people.attributes.inspect }"
		if @people.save
			redirect_to projects_path, notice: "%span.copy-medium-spring-green.text-bold Hey&#44;
				%span.copy-navy-blue-sports Welcome
				to our
				%span.copy-red.text-bold Design
				%span.copy-orange.text-bold Studio.
				%span.copy-medium-spring-green It&rsquo;s
				your
				%span.copy-jade.text-bold First
				%span.copy-navy-blue-sports.text-bold time
				here&#44; why don't you
				%span.copy-navy-blue-sports.text-bold Write
				your first
				%span.copy-cyan.text-bold Lines
				%span.copy-medium-spring-green.text-bold Here."
				
		else
			flash.now.alert = "%span.copy-medium-spring-green.text-bold Hey&#44;
				either you have Signed Up with us&#44; or the 
				%span.copy-deep-sky-blue.text-bold Email Id
				you just
				%span.copy-medium-spring-green.text-bold typed
				in&#44; is in use by
				%span.copy-orange.text-bold Someone
				who has or is working with us on a
				%span.copy-red.text-bold Website
				%span.copy-golden-yellow.text-bold &#150
				you could try your
				%span.copy-orange-red.text-bold Secondary
				Email Address."
			render :lets_work_together
		end	
	end	
	
    def lets_work_together
		@people = People.new
	end
	
	def show
		@people = People.find(params[:email])
		respond_with(@people)
	end
	
	private
	
	def fields_for_signup
		params.require(:people).permit(:email, :password)
	end

	
end












