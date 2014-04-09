class TasksController < ApplicationController
  
  respond_to :html, :js, :json
  
  def new
	@task = Task.new
  end
  
  def method_for_form_fields
	params.require(:tasks).permit(:name)
  end
	
  def create
	@task = Task.new(method_for_form_fields)
  end

  def show
	@task = Task.find(params[:name])
	respond_with(@task)
  end

  def edit
  end

  def update
  end

  def delete
  end
  
end
