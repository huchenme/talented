class UserSessionsController < ApplicationController
  skip_before_filter :require_login, :except => [:destroy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:session][:email],params[:session][:password],params[:session][:remember])
      flash[:success] = 'Login successful.'
      redirect_back_or_to root_path
    else
      flash.now[:alert] = "Wrong email or password."
      render :new
    end
  end

  def destroy
    logout
    flash[:success] = 'Logged out!'
    redirect_to root_path
  end
end