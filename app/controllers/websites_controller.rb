class WebsitesController < ApplicationController
  
  respond_to :html, :js, :xml  
  
  def new
	@website = Website.new
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
		redirect_to @website
	else
        logger.info "Attributes did not got saved: @website.attributes.inspect"
        render lets_get_started
	end	
  end
  
  def show
	@website = Website.find(params[:id])
	respond_with(@website)	
  end
  
  def parameters_for_saving_the_website_form
	params.require(:website).permit(:people_name, :people_email, :website_name, :website_description)
  end
  
end
