class SubscriptionTea < ApplicationRecord
  validates_presence_of :tea_id
  validates_presence_of :subscription_id
  belongs_to :teas
  belongs_to :subscriptions
end
