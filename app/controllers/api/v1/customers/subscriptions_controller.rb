class Api::V1::Customers::SubscriptionsController < ApplicationController

  def create
    customer_subscription = CustomerSubscription.new(customer_subscription_params)
    if customer_subscription.save
      render json: CustomerSubscriptionSerializer.new(customer_subscription), status: 201
    end
  end

  def update
     customer_subscription = CustomerSubscription.find(params[:id])
   if customer_subscription.update(customer_subscription_params)
     render json: CustomerSubscriptionSerializer.new(customer_subscription)
   end
 end

  private
  def customer_subscription_params
    if params[:is_subscribed] == "0"
      params[:is_subscribed] = params[:is_subscribed].to_i
    end
    params.permit(:customer_id, :subscription_id, :is_subscribed)
  end

end
