class BugsController < ApplicationController
  def index
    @bugs = Bug.all.sort_by(&:status).reverse
  end

  def new
    @bug = Bug.new(:status => 'Open')
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
