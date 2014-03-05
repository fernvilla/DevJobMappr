class MapsController < ApplicationController
  def index
    @maps = Map.all
  end
    def jobs_search 
     if params[:category]
        @jobs = Job.where(job_type: params[:category])
      else
        @jobs = Job.all 
      end
        render json: @jobs
    end

end
