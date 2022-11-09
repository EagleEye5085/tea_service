class Tea < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :temperature
  validates_presence_of :brew_time
  validates_numericality_of :temperature, only_integer: true
  validates_numericality_of :brew_time, only_integer: true
  has_many :subscription_teas
  has_many :subscriptions, through: :subscription_teas
end
