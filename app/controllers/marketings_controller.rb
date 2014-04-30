class MarketingsController < ApplicationController
  before_action :set_marketing, only: [:show, :edit, :update, :destroy]

  # GET /marketings
  # GET /marketings.json
  def index
    @marketings = Marketing.all
  end

  # GET /marketings/1
  # GET /marketings/1.json
  def show
  end

  # GET /marketings/new
  def new
    @marketing = Marketing.new
  end

  # GET /marketings/1/edit
  def edit
  end

  # POST /marketings
  # POST /marketings.json
  def create
    @marketing = Marketing.new(marketing_params)

    respond_to do |format|
      if @marketing.save
        format.html { redirect_to @marketing, notice: 'Marketing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @marketing }
      else
        format.html { render action: 'new' }
        format.json { render json: @marketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marketings/1
  # PATCH/PUT /marketings/1.json
  def update
    respond_to do |format|
      if @marketing.update(marketing_params)
        format.html { redirect_to @marketing, notice: 'Marketing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @marketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketings/1
  # DELETE /marketings/1.json
  def destroy
    @marketing.destroy
    respond_to do |format|
      format.html { redirect_to marketings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marketing
      @marketing = Marketing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marketing_params
      params.require(:marketing).permit(:Name, :Business_Name, :Email, :Phone_Number, :Address, :url)
    end
end
