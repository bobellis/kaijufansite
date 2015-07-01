class WorksController < ApplicationController

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to work_path(@work)
    else
      render :new
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    @work.update(work_params)
    redirect_to work_path(@work)
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to root_path
  end

  private

  def work_params
    params.require(:work).permit(:title, :category, :author, :actors, :description)
  end

end
