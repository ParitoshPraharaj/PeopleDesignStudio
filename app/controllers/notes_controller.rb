class NotesController < ApplicationController
  
  #Custom Methods
  
  private
  
  def fields_for_creating_a_note
	params.require(:notes).permit(:title, :content)  
  end
  
  respond_to :html, :json
  
  def index
	@notes = Note.all
  end
  
  def new
	@note = Note.new
  end
	
  def create
	@notes = Note.all
	@note = Note.new(fields_for_creating_a_note)
	flash[:message] = 'Hey, your Note has been created. Get Going now.' if @note.save
	redirect_to(@note)
  end

  def edit
	@notes = Note.all
	@note = Note.find(params[:title])
  end

  def update
	@note = Note.update(params([:notes])).require(:content)
	flash[:message] = 'Hey, you added a few lines to your Note.' if @note.update
  end

  def show
	@note = Note.find(params[:title])
	respond_with(@note)
  end

  def delete
	@note = Note.find(params[:title])
	@note.destroy
  end
 
end 