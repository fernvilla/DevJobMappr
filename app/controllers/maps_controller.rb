class MapsController < ApplicationController
  def index
    @maps = Map.all
    @jobs = Job.all
  end
end
