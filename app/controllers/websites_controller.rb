class WebsitesController < ApplicationController
  
  respond_to :html, :js, :xml  
  
  def new
	@website = Website.new
  end

  def index
      @websites = Website.order(id: :desc).limit(3)
  end

  def lets_get_started
	@website = Website.new
  end

  def create
	@website = Website.create(parameters_for_saving_the_website_form)
        logger.info "A Website Saved: @website.attributes.inspect"
	if @website.save
		redirect_to @website
	else
        logger.info "Attributes did not got saved: @website.attributes.inspect"
		flash.now[:alert] = "<p class='text-center margin-bottom-five-percent'><span class='border-deep-sky-blue'><span class='copy-medium-spring-green'> Hey,</span>
		you
		<span class='copy-red'>	missed</span>
		out some parts while
		<span class='copy-navy-blue-sports'> filling</span>
		out the Form. We just need
		<span class='copy-orange-red'> Your</span>
		<span class='copy-navy-blue-sports'> Name,</span>
		<span class='copy-red'> Email, </span>
		and a few lines on your 
		<span class='copy-red'> website.</span></span></p>"
        render "lets_get_started"
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












