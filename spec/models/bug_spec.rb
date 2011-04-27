require 'spec_helper'

describe Bug do
  context 'to be valid' do
    it 'should have a summary' do
      bug = Bug.new
      bug.valid?.should == false
      bug.summary = "this is my summary"
      bug.valid?.should == true
    end
  end

  context 'on save' do
    it 'should not save an empty summary' do
      Bug.create :summary => ""
      Bug.count.should == 0
    end

    it 'should support symbols' do
      summary = %{~!@@\#$$%^&*()__+{}|'\\/:"';<>?,\./]\[')}
      Bug.create :summary => summary
      Bug.all.first.summary.should == summary 
    end
  end

  #should store data from multiple encodings
end
