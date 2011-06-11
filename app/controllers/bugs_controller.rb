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

  def edit
    @bug = Bug.find(params[:id])
  end

  def update
    @bug = Bug.find(params[:id])

    respond_to do |format|
      if @bug.update_attributes(params[:bug])
        format.html { redirect_to(bugs_path, :notice => 'Post was successfully updated.') }
      end
    end
  end
end
