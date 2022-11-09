class Subscription < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :status
  validates_presence_of :frequency
  validates_numericality_of :price, only_integer: true
  has_many :subscription_teas
  has_many :teas, through: :subscription_teas
  has_many :customer_subscriptions
  has_many :customers, through: :customer_subscriptions
end
