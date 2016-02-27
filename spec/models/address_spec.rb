require 'rails_helper'

RSpec.describe Address, :type => :model do
  let(:address) { FactoryGirl.build(:address, owner: FactoryGirl.create(:owner))}

  context 'associations' do
    it  { should belong_to :owner }
  end
end
