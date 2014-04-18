class WebsitesController < ApplicationController
  def new
	
  end

  def index
      @websites = Website.order(id: :desc).limit(3)
  end

  def lets_get_started
	
  end

  def create
	@website = Website.create(parameters_for_saving_the_website_form)
        logger.info "A Website Saved: @website.attributes.inspect"
	if @website.save
		@website_information = Website.last
		person_name = @website_information.people_name
	    redirect_to lets_begin_work_path
	else
        logger.info "Attributes did not got saved: @website.attributes.inspect"
        render lets_get_started
	end	
  end
  
  def lets_begin_work
	
  end
  
  def parameters_for_saving_the_website_form
	params.require(:website).permit(:people_name, :people_email, :website_name, :website_description)
  end
  
  
  
  
  
end
