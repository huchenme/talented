class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]
  before_filter :correct_user, only: [:edit, :update, :destroy]

  def show
    @user = User.find(params[:id])
  end

  def new
    @developer = User.new
    @employer = User.new
  end

  def create
    if params[:type] == 'developer'
      create_developer
    elsif params[:type] == 'employer'
      create_employer
    else
      redirect_to signup_path, alert: "Currently we don't support the user type at the moment."
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

  def create_developer
    @developer = User.new(params[:user])
    @employer = User.new
    if @developer.save
      profile = Developer.new
      profile.save(validate: false)
      @developer.update_attribute(:profile, profile)
      user_params = params[:user]
      login(user_params[:email],user_params[:password],true)
      flash[:success] = 'Registration successful.'
      redirect_to profile_path
    else
      render :new
    end
  end

  def create_employer
    @employer = User.new(params[:user])
    @developer = User.new
    if @employer.save
      profile = Employer.new
      profile.save(validate: false)
      @employer.update_attribute(:profile, profile)
      user_params = params[:user]
      login(user_params[:email],user_params[:password],true)
      flash[:success] = 'Registration successful.'
      redirect_to profile_path
    else
      render :new
    end
  end
end