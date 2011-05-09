require 'spec_helper'

describe Bug do
  context 'to be valid' do
    it 'should have a title and a summary ' do
      bug = Bug.new
      bug.valid?.should == false
      bug.title = "title"
      bug.valid?.should == false
      bug.summary = "this is my summary"
      bug.valid?.should == true
    end
  end
end
