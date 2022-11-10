require 'rails_helper'

RSpec.describe Customer do
  it 'can give a list of customers subscriptions' do
    customer = Customer.create!(first_name: "Tom", last_name: "Tom", email: "tomtom@gmail.com", address: "123 tom st.")

    subscription_1 = Subscription.create!(title: "good tea", price: 50, status: "active", frequency: "5 months")

    subscription_2 = Subscription.create!(title: "good tea", price: 250, status: "active", frequency: "12 months")

    subscription_3 = Subscription.create!(title: "good tea", price: 550, status: "active", frequency: "6 months")

    customer_subscription_1 = CustomerSubscription.create!(customer_id: customer.id, subscription_id: subscription_1.id)
    customer_subscription_2 = CustomerSubscription.create!(customer_id: customer.id, subscription_id: subscription_2.id)
    customer_subscription_3 = CustomerSubscription.create!(customer_id: customer.id, subscription_id: subscription_3.id)

    update_body = {
      'id': CustomerSubscription.last.id,
      'customer_id': customer.id,
      'is_subscribed': 0
      }

    patch api_v1_customer_subscription_path(update_body)

    expect(response).to be_successful

    customer_body = {
      'customer_id': customer.id
      }
    get api_v1_customer_path(customer_body)

    customer_subscriptions = JSON.parse(response.body, symbolize_names: true)

    expect(customer_subscriptions[:data].count).to eq(3)
    expect(customer_subscriptions[:data][0][:attributes][:is_subscribed]).to eq("true")
    expect(customer_subscriptions[:data][1][:attributes][:is_subscribed]).to eq("true")
    expect(customer_subscriptions[:data][2][:attributes][:is_subscribed]).to eq("false")


    end
  end
