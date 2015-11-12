class CustomersController < ApplicationController
	def index
		@customer = Customer.all
	end

	def show
    	@customer = Customer.find(params[:id])
    end
 
 	def new
 		@customer = Customer.new
 	end	

 	def create
    	Customer.create(customer_params)
    	redirect_to root_path
  	end

  private

  def customer_params
    params.require(:customer).permit(:name, :order, :phone)
  end
end

