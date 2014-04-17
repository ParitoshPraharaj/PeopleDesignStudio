class WebsitesController < ApplicationController
  def new
	
  end

  def index
      @websites = Website.order(created_at: :desc).limit(3)
  end

  def lets_get_started
	
  end

  def create
	@website = Website.create(parameters_for_saving_the_website_form)
        logger.info "A Website Saved: @website.attributes.inspect"
	if @website.save
		@person_name = @website.people_name
	    redirect_to lets_begin_work_path(@person_name)		
	else
        logger.info "Attributes did not got saved: @website.attributes.inspect"
        render lets_get_started
	end	
  end
  
  def lets_begin_work
	#@person_just_created_a_project = website.people_name
	#render lets_begin_work(@person_just_created_a_project)
  end
  
  def parameters_for_saving_the_website_form
	params.require(:website).permit(:people_name, :people_email, :website_name, :website_description)
  end
  
  
  
  
  
end
