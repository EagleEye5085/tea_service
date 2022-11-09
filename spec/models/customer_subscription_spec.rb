require 'rails_helper'

RSpec.describe CustomerSubscription, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:customer_id) }
    it { should validate_presence_of(:subscription_id) }
    it { should validate_presence_of(:is_subscribed) }

  end

  describe 'relationships' do
    it { should belong_to :customer }
    it { should belong_to :subscription }
  end

  before :each do

  end

  describe 'class methods' do

  end

  describe 'instance methods' do

  end
end
