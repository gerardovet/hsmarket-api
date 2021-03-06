require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { FactoryGirl.build(:user) }

  let(:client) { FactoryGirl.build(:client) }

  context 'attributes' do
    it { should respond_to(:username) }
    it { should respond_to(:name) }
    it { should respond_to(:auth_token) }
  end

  context 'associations' do
    it { should have_many :addresses }
  end

  context 'on create' do
    let(:client) { FactoryGirl.create(:client) }
    it "should have client role" do
      expect(client.has_role?(:client)).to be true
    end
  end
end
