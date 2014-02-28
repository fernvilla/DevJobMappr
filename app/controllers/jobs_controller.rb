class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def create
    @job = Job.new(params.require(:job).permit(:job_title))
    if @job.save
      flash[:notice] = 'Yay! your job is saved.'
      redirect_to jobs_path
    else 
      flash[:error] = 'Did not save'
      render action: 'new'
    end 
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

  def update
  end

  private
  def jobs_params
    params.require(:job).permit(:job_title)
  end 
end
