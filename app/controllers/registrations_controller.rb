class RegistrationsController < Devise::RegistrationsController
  def update
    @user = User.find(current_user.id)

    params[:user].delete(:current_password)

    if @user.update_without_password(params[:user])
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end
  end
end