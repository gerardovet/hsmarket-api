require 'rails_helper'

RSpec.describe Order, :type => :model do
  let(:order) { FactoryGirl.build(:order) }
  context 'associations' do
    it { should belong_to :shop }
    it { should belong_to :user }
  end
end
