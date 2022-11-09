class CustomerSubscription < ApplicationRecord
  validates_presence_of :customer_id
  validates_presence_of :subscription_id
  validates_presence_of :is_subscribed
  belongs_to :customer
  belongs_to :subscription
end
