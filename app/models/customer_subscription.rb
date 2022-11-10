class CustomerSubscription < ApplicationRecord
  validates_presence_of :customer_id
  validates_presence_of :subscription_id
  validates_presence_of :is_subscribed

  enum is_subscribed: { "false": 0, "true": 1 }, _prefix: :is_subscribed

  belongs_to :customer
  belongs_to :subscription
end
