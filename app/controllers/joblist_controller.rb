class JoblistController < ApplicationController
  def index
    @jobs = Job.all
  end
end
