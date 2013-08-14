class JobsController < ApplicationController
  before_filter :job, only: [:show, :edit, :update, :destroy]
  before_filter :profile

  def new
    @job = @profile.jobs.build
  end

  def create
    @job = @profile.jobs.build(params[:job])
    if @job.save
      flash[:success] = "The job posting is created"
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @job.update_attributes(params[:job])
      flash[:success] = "The job posting is updated"
      redirect_to job_path(@job)
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    flash[:success] = "The job posting is deleted"
    redirect_to profile_path
  end

  def show
  end

  private

  def profile
    @profile ||= current_user.profile
  end

  def job
    if current_user.developer?
      redirect_to profile_path, alert: "The page is only accessible by employers"
    else
      @job = current_user.profile.jobs.find_by_id(params[:id])
      redirect_to :back if @job.nil?
    end
  end
end