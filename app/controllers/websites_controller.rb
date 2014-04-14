class WebsitesController < ApplicationController
  def new
	
  end

  def lets_get_started
	
  end

  def create
	@website = Website.create(parameters_for_saving_a_website_from_a_user)
	
	if @website.save
		redirect_to lets_begin_work_path(@website)
	else
		render lets_get_started
	end	
	
  end
  
  def lets_begin_work
	
  end
  
  def parameters_for_saving_a_website_from_a_user
	params.require(:website).permit(:people_name, :people_email, :website_name, :website_description)
  end
  
end
