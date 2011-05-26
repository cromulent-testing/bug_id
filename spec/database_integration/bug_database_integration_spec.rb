require 'spec_helper'

describe Bug do
  context 'on save' do
    it 'should not save an empty bug' do
      Bug.create :summary => ""
      Bug.count.should == 0
    end

    it 'should not save an empty summary' do
      Bug.create :summary => ""
      Bug.count.should == 0
    end

    it 'should support symbols' do
      symbols = %{~!@@\#$$%^&*()__+{}|'\\/:"';<>?,\./]\[')}
      Bug.create :summary => symbols
      Bug.all.first.summary.should == symbols
    end
  end

  #should store data from multiple encodings
end
