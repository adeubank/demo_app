require 'spec_helper'

describe UsersHelper do

  describe "gravatar_for" do
    let(:user) { FactoryGirl.create(:user) }

    it "should include the default size 50" do
      gravatar_for(user).should =~ /\?s=50/
    end

    it "should include the defined size 40" do
      gravatar_for(user, { size: 40 }).should =~ /\?s=40/
    end

  end
end
