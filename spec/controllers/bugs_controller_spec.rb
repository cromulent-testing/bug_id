require 'spec_helper'

describe BugsController do
  context '"GET" index' do
    it 'should display the summary for all bugs' do
      Bug.create :title => 't_one', :summary => 's_one'
      Bug.create :title => 't_two', :summary => "s_two"

      get :index

      assigns[:bugs].count.should == 2
      assigns[:bugs][0].title.should == "t_one"
      assigns[:bugs][0].summary.should == "s_one"

      assigns[:bugs][0].title.should == "t_one"
      assigns[:bugs][1].summary.should == "s_two"
    end
  end
end
