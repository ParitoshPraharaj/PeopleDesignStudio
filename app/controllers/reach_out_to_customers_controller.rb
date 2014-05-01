class ReachOutToCustomersController < ApplicationController
  before_action :set_reach_out_to_customer, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json
  
  # GET /reach_out_to_customers
  # GET /reach_out_to_customers.json
  def index
    @reach_out_to_customers = ReachOutToCustomer.all
  end

  # GET /reach_out_to_customers/1
  # GET /reach_out_to_customers/1.json
  def show
  end

  # GET /reach_out_to_customers/new
  def new
    @reach_out_to_customer = ReachOutToCustomer.new
  end

  # GET /reach_out_to_customers/1/edit
  def edit
  end

  # POST /reach_out_to_customers
  # POST /reach_out_to_customers.json
  def create
    @reach_out_to_customer = ReachOutToCustomer.new(reach_out_to_customer_params)

    if @reach_out_to_customer.save
		MarketingEmail.send_marketing_email(@reach_out_to_customer).deliver
        redirect_to @reach_out_to_customer, notice: "Hey, the Email you send must have reached #{@reach_out_to_customer.to}."
    else
        render :new
		flash.now[:alert] = "Something happened, email Back."
    end
  end

  # PATCH/PUT /reach_out_to_customers/1
  # PATCH/PUT /reach_out_to_customers/1.json
  def update
    respond_to do |format|
      if @reach_out_to_customer.update(reach_out_to_customer_params)
        format.html { redirect_to @reach_out_to_customer, notice: 'Reach out to customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reach_out_to_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reach_out_to_customers/1
  # DELETE /reach_out_to_customers/1.json
  def destroy
    @reach_out_to_customer.destroy
    respond_to do |format|
      format.html { redirect_to reach_out_to_customers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reach_out_to_customer
      @reach_out_to_customer = ReachOutToCustomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reach_out_to_customer_params
      params.require(:reach_out_to_customer).permit(:to, :subject, :email, :image)
    end
end
