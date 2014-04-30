class WhatsHappenningAcrossTheWorldController < ApplicationController

	respond_to :html, :json

	def index
		@objWhatsHappeningAroundTheWorld = WhatsHappeningAroundTheWorld.all
		respond_with(@objWhatsHappeningAroundTheWorld)
	end
	
	def new
		@objWhatsHappeningAroundTheWorld = WhatsHappeningAroundTheWorld.new
	end
	
	
	def create
		@objWhatsHappeningAroundTheWorld = WhatsHappeningAroundTheWorld.create(strong_parameters_for_saving_the_model)
		image = params[:whatshappeningaroundtheworld][:image]
		File.open(Rails.root.join('public', 'uploads', image.original_filename),'wb') do |objImage|
			objImage.write(image)
		end
		if @objWhatsHappeningAroundTheWorld.save
			redirect_to whats_happening_around_the_worlds_path
		else
			flash.now[:alert] = "Hey, something happened, the form did not get saved."
			render :new
		end	
	end
	
	def show
		@objWhatsHappeningAroundTheWorld = WhatsHappeningAroundTheWorld.find(params[:id])
		respond_with(@objWhatsHappeningAroundTheWorld)	
	end
	
	
	private
	
	def strong_pramaters_for_saving_the_model
		params.require(:whatshappeningaroundtheworld).permit(:title, :content, :image)
	end
end
