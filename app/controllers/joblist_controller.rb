class JoblistController < ApplicationController
skip_before_filter :authorize
  def index
    @jobs = Job.all
  end
end
