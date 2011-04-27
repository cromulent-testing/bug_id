class BugController < ApplicationController
  def index
    @bugs = Bug.all
  end
end
