class WorldsController < ApplicationController
  
  respond_to :html, :js, :json  
  
  
  def sign_out
	session[:user_id] = nil
	redirect_to photos_from_across_the_world_path
  end
  
  def new
  
	@world = World.new
	
  end

  def create
  
  @world = World.new(strong_parameter_method_for_signing_up_a_user)
	if @world.save
		flash[:notice] = "You have signed up."
		redirect_to projects_path
	else
		render :new
	end	
  
  end

  def lets_start_again
	@world = World.new
  end
  
  def sign_in
	world = World.where(email: params[:worlds][:email]).first
	
	if world && world.authenticate(params[:worlds][:password])
		session[:world_id] = world.id
		redirect_to notes_path, success:  "Hey, welcome back. We need to get started. This is what we have worked on so far. What do you think?" 
	else
		render lets_start_again
	end	
  end
  
  def show
  end
  
  private
  
  def strong_parameter_method_for_signing_up_a_user
	params.require(:worlds).permit(:email, :password)
  end
  
end

