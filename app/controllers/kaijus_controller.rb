class KaijusController < ApplicationController
  def index
    @kaijus = Kaiju.all
    @works = Work.all
    render :index
  end

  def new
    @kaiju = Kaiju.new
  end

  def create
    @kaiju = Kaiju.new(kaiju_params)
    if @kaiju.save
      redirect_to kaiju_path(@kaiju)
    else
      render :new
    end
  end

  def update
    @kaiju = Kaiju.find(params[:id])
    @kaiju.update(kaiju_params)
    @work_ids = params[:kaiju][:work_ids]
    @work_ids.each do |work_id|
      if work_id != ""
        @kaiju.works.push(Work.find(work_id))
      end
    end
    redirect_to kaiju_path(@kaiju)
  end

  def show
    @kaiju = Kaiju.find(params[:id])
    @works = Work.all
  end

  def edit
    @kaiju = Kaiju.find(params[:id])
  end

  def destroy
    @kaiju = Kaiju.find(params[:id])
    @kaiju.destroy
    redirect_to root_path
  end

  private

  def kaiju_params
    params.require(:kaiju).permit(:name, :size, :category, :description, :image)
  end
end
