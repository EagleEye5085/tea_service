class Api::V1::CustomersController < ApplicationController

  def show
    if Customer.find(params[:customer_id])
      render json: CustomerSubscriptionSerializer.new(Customer.find(params[:customer_id]).customer_subscriptions)
    else
      render json: { description: 'Error: Incorrect parameters' }, status: 401
    end
  end

end
