class NotesController < ApplicationController
  
  #Custom Methods
  
  respond_to :html, :json
  
  def index
	@notes = Note.all
  end
  
  def new
	@note = Note.new
  end
	
  def create
	@notes = Note.all
	@note = Note.create(fields_for_creating_a_note)
	if @note.save
		flash[:message] = 'Hey, your Note has been created. Get Going now.'
		redirect_to(@note)
	else
		render :new
	end	
  end

  def edit
	@note = Note.find(params[:title])
  end

  def update
	@note = Note.find(params[:id])
	if @note.update
		flash[:message] = 'Hey, you added a few lines to your Note.'
		redirect_to @note
	else
		flash.now.alert = "Hey something wrong happened while updating your Note. Try Again."
		render :edit
	end	
  end

  def show
	@note = Note.find(params[:title])
	respond_with(@note)
  end

  def delete
	@note = Note.find(params[:title])
	@note.destroy
  end
  
  private
  
  def fields_for_creating_a_note
	params.require(:notes).permit(:title, :content) 
  end
 
end 