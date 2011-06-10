require 'spec_helper'

describe Bug do
  context 'to be valid' do
    it 'should have a description' do
      bug = Bug.create :description => ''
      bug.valid?.should == false
    end

    it 'should have a valid status' do
      bug = Bug.create :status => 'invalid'
      bug.valid?.should == false
    end

    it 'should have a description and a status ' do
      bug = Bug.create :description => '.', :status => 'Open'
      bug.valid?.should == true
    end
  end
end
