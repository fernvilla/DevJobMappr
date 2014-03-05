class MapsController < ApplicationController
  def index
    @maps = Map.all
  end
    def jobs_search 
      if params[:category]==''
          @jobs = Job.all
      elsif params[:category]
         @jobs = Job.where(job_type: params[:category]) 
      end
        render json: @jobs
    end

end
