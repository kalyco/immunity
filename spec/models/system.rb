require 'rails_helper'

RSpec.describe System do
  let(:user) { FactoryGirl.create(:user) }
  it "has a valid factory" do
    Factory.create(:system).should be_valid
  end
  it "is invalid without a user" do
    Factory.build(:system, user: user).should_be_valid
  end
  it "starts with 30 meta_points" do
    sys = Factory.create(:system, user: user)
    sys.meta_points.should == 30
  end
  it "starts with 0 memory" do
		sys = Factory.create(:system, user: user)
    sys.memory.should == 0
  end
  it "is unique to 1 user" do
    sys = Factory.create(:system, user: user)
    Factory.build(:user, system: sys).should_be_invalid
  end
end