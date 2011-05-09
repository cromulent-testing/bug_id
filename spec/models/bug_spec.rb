require 'spec_helper'

describe Bug do
  context 'to be valid' do
    it 'should have a title and a summary ' do
      bug = Bug.new
      bug.valid?.should == false
      bug.title = "title"
      bug.summary = "this is my summary"
      bug.valid?.should == true
    end
  end

  context 'on save' do
    it 'should not save an empty bug' do
      Bug.create :title => "", :summary => ""
      Bug.count.should == 0
    end

    it 'should not save an empty summary' do
      Bug.create :title => "title", :summary => ""
      Bug.count.should == 0
    end

    it 'should not save with an empty title' do
      Bug.create :title => "", :summary => "summary"
      Bug.count.should == 0
    end

    it 'should support symbols' do
      symbols = %{~!@@\#$$%^&*()__+{}|'\\/:"';<>?,\./]\[')}
      Bug.create :title => symbols, :summary => symbols
      Bug.all.first.title.should == symbols
      Bug.all.first.summary.should == symbols
    end
  end

  #should store data from multiple encodings
end
