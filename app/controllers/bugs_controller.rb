class BugsController < ApplicationController
  def index
    @bugs = Bug.all
  end

  def new
    @bug = Bug.new(:status_id => 2)
  end

  def create
    @bug = Bug.new(params[:bug])

    if @bug.save
      redirect_to(bugs_path, :notice => 'Bug was successfully created.')
    else
      render :action => "new"
    end
  end

end
