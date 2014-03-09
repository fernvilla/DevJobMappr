class JobsController < ApplicationController
  def index
    if current_user
      @jobs = current_user.jobs
    else
      redirect_to new_user_session_path
      flash[:alert] = "Please sign in first"
    end
  end

  def create
    @job = Job.new(jobs_params)
    @job.user = current_user
    if @job.save
      flash[:notice] = "Your Job Has Been Posted Successfully"
      redirect_to jobs_path
    else 
      flash[:error] =  "Error In Your Submission"
      render action: 'new'
    end 
  end

  def new
    if current_user
      @job = Job.new 
    else
      redirect_to new_user_session_path
      flash[:alert] = "Please sign in first"
    end
  end

  def show
    if current_user
      @job = Job.find(params[:id])
    else
      redirect_to new_user_session_path
      flash[:alert] = "Please sign in first"
    end
  end

  def edit
    if current_user
      @job = Job.find(params[:id])
    else
      redirect_to new_user_session_path
      flash[:alert] = "Please sign in first"
    end
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(jobs_params)
      flash[:notice] = "Successfully Updated Your Job"
      redirect_to jobs_path
    else
      render action 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:notice] = "Successfully Deleted Your Job"
    redirect_to jobs_path
  end

  private
    def jobs_params
      params.require(:job).permit(:job_title, :job_description, :experience_level, :job_type, :primary_languages, :job_link, :company_name, :company_address, :latitude, :longitude)
    end 
end
