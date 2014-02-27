class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new 
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job =Job.find(params[:id])
  end

  def create
  end

  def update
  end

  private
  def jobs_params
    params.require(:job).permit(:job_title)
  end 
end
