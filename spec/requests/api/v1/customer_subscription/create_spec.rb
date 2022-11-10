require 'rails_helper'

RSpec.describe CustomerSubscription do
  it "can create a customer subscription" do
    customer = Customer.create!(first_name: "Tom", last_name: "Tom", email: "tomtom@gmail.com", address: "123 tom st.")

    subscription = Subscription.create!(title: "good tea", price: 50, status: "active", frequency: "5 months")

    create_body = {
      'customer_id': customer.id,
      'subscription_id': subscription.id
    }

      post api_v1_customer_subscriptions_path(create_body)

      expect(response).to be_successful

      expect(CustomerSubscription.last.customer_id).to eq(customer.id)
      expect(CustomerSubscription.last.subscription_id).to eq(subscription.id)
      expect(CustomerSubscription.last.is_subscribed).to eq("true")
  end

  it 'can cancel a subscription' do
    customer = Customer.create!(first_name: "Tom", last_name: "Tom", email: "tomtom@gmail.com", address: "123 tom st.")

    subscription = Subscription.create!(title: "good tea", price: 50, status: "active", frequency: "5 months")

    create_body = {
      'customer_id': customer.id,
      'subscription_id': subscription.id
    }

      post api_v1_customer_subscriptions_path(create_body)

      expect(response).to be_successful

      update_body = {
        'id': CustomerSubscription.last.id,
        'subscription_id': subscription.id,
        'is_subscribed': 0
      }

      patch api_v1_customer_subscription_path(update_body)

      expect(response).to be_successful

      expect(CustomerSubscription.last.customer_id).to eq(customer.id)
      expect(CustomerSubscription.last.subscription_id).to eq(subscription.id)
      expect(CustomerSubscription.last.is_subscribed).to eq("false")
    end
end
