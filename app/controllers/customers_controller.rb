class CustomersController < ApplicationController
layout "dashboard"

def index
	@customers = Customer.all
end

def new
  @customer = Customer.new
end

def create
	@customer = Customer.new(customer_params)
	@customer.user_id = current_user.id
	respond_to do |format|
	if @customer.save
		format.html {redirect_to :back, notice: "Customer Added"}
		format.js
	else
		format.html { redirect_to :back, notice: "Saving Failed"}
		format.js
	end
end
end
private

def customer_params
params[:customer].permit(:name, :email, :source_id)
end
end
