require 'rails_helper'

RSpec.describe SubscriptionTea, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:tea_id) }
    it { should validate_presence_of(:subscription_id) }
  end

  describe 'relationships' do
    it { should belong_to :tea }
    it { should belong_to :subscription }
  end

  before :each do

  end

  describe 'class methods' do

  end

  describe 'instance methods' do

  end
end