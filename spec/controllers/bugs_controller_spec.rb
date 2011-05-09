require 'spec_helper'

describe BugsController do
  context '"GET" index' do
    it "should expose all bugs to the view" do
      bugs = []
      Bug.stub!(:all).and_return(bugs)
      get :index
      assigns[:bugs].should == bugs
    end
  end
end
