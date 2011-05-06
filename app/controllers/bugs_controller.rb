class BugsController < ApplicationController
  def index
    @bugs = Bug.all
    respond_to do |format|
      format.html
    end
  end

  def new
    @bug = Bug.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @bug = Bug.new(params[:bug])

    if @bug.save
      redirect_to(bugs_path, :notice => 'Post was successfully created.')
    else
      render :action => "new"
    end
  end

end
