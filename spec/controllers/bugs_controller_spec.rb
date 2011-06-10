require 'spec_helper'

describe BugsController do
  context '"GET" index' do
    it "should expose all bugs to the view" do
      bugs = [Bug.make]
      Bug.stub!(:all).and_return(bugs)

      get :index
      assigns[:bugs].should == bugs
    end

    it "should put open bugs at the top and closed bugs at the bottom" do
      bugs = []
      bugs.push Bug.make :status =>'Closed'
      bugs.push Bug.make :status =>'Open'
      bugs.push Bug.make :status =>'Closed'

      get :index
      assigns[:bugs].first.status.should == 'Open'
      assigns[:bugs].last.status.should == 'Closed'
    end
  end
end
