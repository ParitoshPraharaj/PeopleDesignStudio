class BlogController < ApplicationController

  respond_to :html, :json
  
  def index
	@posts = Blog.order(created_at: :desc)
	respond_with(@posts)
  end
	
  def new
	@blog = Blog.new
  end

  def create
	@blog = Blog.create(strong_parameters_method_for_saving_and_updating_blog_content)
	if @blog.save
		redirect_to @blog, notice: "%span.copy-medium-spring-green Hey&#44;
			your
			%span.copy-blue Post
			looks
			%span.copy-red Good&#44;
			you could
			%span.copy-golden-yellow Edit
			it
			%span.copy-orange-red Down Below."
	else
		flash.now.alert = "%span.copy-medium-spring-green Hey&#33; 
		for some
		%span.copy-orange-red reasons&#44;
		your
		%span.copy-blue Post
		did not got %span.copy-red Saved.
		%span.copy-blue Try
		%span.copy-red Again."
		render :new
	end	
  end
	
  def show
    @blog = Blog.friendly.find(params[:id])
	respond_with(@blog)
  end	

	
  def index
	@blog = Blog.all
  end

  def edit
	@blog = Blog.friendly.find(params[:id])
  end

  def update
	@blog = Blog.find(params[:id])
	if @blog.update(strong_parameters_method_for_saving_and_updating_blog_content)	
		redirect_to @blog
	else
		render :new
	end	
  end
  
  private 
  
  def strong_parameters_method_for_saving_and_updating_blog_content
	params.require(:blog).permit(:title, :content, :files)
  end 
  
  
end
