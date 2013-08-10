class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]
  before_filter :correct_user, only: [:edit, :update, :destroy]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      login(params[:user][:email],params[:user][:password],params[:user][:remember])
      flash[:success] = 'Registration successful.'
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "User was successfully updated."
      redirect_to settings_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: 'You have deleted your account, bye!'
  end

  private

  def correct_user
    @user ||= current_user
  end
end