class ProfilesController < ApplicationController
  before_filter :profile

  def show
    redirect_to edit_profile_path unless @profile.valid?
  end

  def edit

  end

  def update
    if @profile.update_attributes(params[:profile])
      flash[:success] = "Profile was successfully updated."
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def profile
    @profile ||= current_user.profile
  end
end