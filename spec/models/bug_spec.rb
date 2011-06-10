require 'spec_helper'

describe Bug do
  context 'to be valid' do
    it 'should have a description and a status ' do
      bug = Bug.new
      bug.valid?.should == false
      bug.description = "this is my description"
      bug.status = "Open"
      bug.valid?.should == true
    end

  end
end
