class SessionsController < ApplicationController
  
  def new
	@user = User.new
  end
  
  def sign_in
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
	  # This Should be Changed to the Work Path
      redirect_to notes_path, notice: "%span.copy-medium-spring-green Hey&#44;
		%span.copy-red.text-bold Welcome
		back gain. 
		%span.copy-orange-red.text-bold Let&#rsquo;s
		Get
		%span.copy-atheletic-blue.text-bold Started 
		With Work."
	 else		
		flash.now.alert = "%span.medium-spring-green Oops&#33;
			%span.copy-red.text-bold &#150;
			%span.copy-golden-yellow.text-bold You
			just used 
			%span.copy-cyan.text-bold mis-typed
			your
			%span.copy-navy-blue-sports Password &#44;
			or&#44; if you have
			%span.copy-medium-spring-green.text-bold Forgotten&#44;
			you could
			%span.copy-red.text-bold Create
			a new one.
			%span.copy-orange-red Make a new Password."
		render lets_start_again_path	
	end		
  end

  def sign_out
	session[:user_id] = user.id
	#To be changed to Worlds News Section
	redirect_to lets_work_together_path, notice: "%span.copy-navy-blue-sports Hey&#44;
		%span.copy-red Hope
		to see you back again. Stay ready for an
		%span.copy-red.text-bold Website
		%span.copy-medium-spring-green Update."
  end
  
end
















