class MainController < ApplicationController
  skip_before_filter :require_login

  def home
    redirect_to profile_path if current_user
  end
end
