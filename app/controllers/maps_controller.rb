class MapsController < ApplicationController
  def index
    @maps = Map.all
    @jobs = Job.all
  end
    def jobs_search 
      if params[:category]==''
          @jobs = Job.all
      elsif params[:category]
         @jobs = Job.where(job_type: params[:category]) 
      end
        render json: @jobs
    end

    def experience_search
      if params[:category]==''
        @jobs = Job.all
      elsif params[:category]
        @jobs = Job.where(experience_level: params[:category])
      end
        render json: @jobs
    end
end
