class SessionsController < ApplicationController
  def sign_in
    people = People.where(email: params[:email]).first
    if people && people.authenticate(params[:password])
      session[:people_id] = people.id
      redirect_to projects_path, notice: "%span.copy-medium-spring-green Hey&#44;
		%span.copy-red.text-bold Welcome
		back gain. 
		%span.copy-orange-red.text-bold Let&#rsquo;s
		Get
		%span.copy-atheletic-blue.text-bold Started 
		With Work."
	 else
		render lets_start_again_path
		flash.now.alert "%span.medium-spring-green Oops&#33;
			%span.copy-red.text-bold &#150;
			%span.copy-golden-yellow.text-bold You
			just used 
			%span.copy-cyan.text-bold mis-typed
			your
			%span.copy-athletic-blue Password &#44;
			or&#44; if you have
			%span.copy-medium-spring-green.text-bold Forgotten&#44;
			you could
			%span.copy-red.text-bold Create
			a new one.
			%span.copy-orange-red Make a new Password."
  end

  def sign_out
	session[:people_id] = people.id
	redirect_to photos_acrosss_the_world_path, notice: "%span.copy-athletic-blue Hey&#44;
		%span.copy-red Hope
		to see you back again. Stay ready for an
		%span.copy-red.text-bold Website
		%span.copy-medium-spring-green Update.	
  end
  
end
















