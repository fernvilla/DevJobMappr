class MapsController < ApplicationController
  def index
    @maps = Map.all
    # @jobs = Job.all


      if params[:category]== "Front-End"
        @jobs = Job.where(job_type:"Front-End")
      elsif params[:category]== "Back-End"
        @jobs = Job.where(job_type:"Back-End")
      elsif params[:category]== "Full-Stack"
        @jobs = Job.where(job_type:"Full-Stack")
      else
        @jobs = Job.all 
      end
  end
end
