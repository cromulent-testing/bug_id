require 'spec_helper'

describe BugController do
  context '"GET" index' do
    it 'should display the summary for all bugs' do
      Bug.create :summary => "one"
      Bug.create :summary => "two"
      Bug.create :summary => "three"

      get :index

      assigns[:bugs].count.should == 3
      assigns[:bugs][0].summary.should == "one"
      assigns[:bugs][1].summary.should == "two"
      assigns[:bugs][2].summary.should == "three"
    end
  end
end
