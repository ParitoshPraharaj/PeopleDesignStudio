class NotesController < ApplicationController
  
  #Custom Methods
  
  private
  
  def fields_for_creating_a_form
	params.require(:notes).permit(:title, :content)  
  end
  
  respond_to :html, :json
  
  def index
	@notes = Note.all
	@world = World.where(email: 'parirakesh@gmail.com')
  end
  
  def new
	@note = Note.new
  end
	
  def create
	@note = Note.new(fields_for_creating_form)
	flash[:message] = 'The note has been 
	saved.' if @note.save
	redirect_to(@note)
  end

  def edit
	@note = Note.find(params[:title])
  end

  def update
	@note = Note.update(fields_for_creating_form)
	flash[:message] = 'The note has been updated.' if @note.update
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