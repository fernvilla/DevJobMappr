class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def create
    @job = Job.new(jobs_params)
    if @job.save
      flash[:notice] = "Your Job Has Been Posted Successfully"
      redirect_to root_path
      #render "maps/index"
    else 
      flash[:error] =  "Error In Your Submission"
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
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(workout_params)
      flash[:notice] = "Successfully Updated Your Job"
      redirect_to root_path
    else
      render action 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:notice] = "Successfully Deleted Your Job"
    redirect_to root_path
  end

  private
    def jobs_params
      params.require(:job).permit(:job_title, :job_description, :experience_level, :job_type, :primary_languages, :secondary_languages, :job_link, :company_name, :company_address, :company_website, :industry, :company_size, :latitude, :longitude)
    end 
end
