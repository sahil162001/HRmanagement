class PasswordsController < ApplicationController
  before_action :require_user_logged_in!
  def edit 
  end

  def update
    if Current.user.authenticate(password_params[:old_password])
      if Current.user.update(password_params)
        redirect_to root_path, notice: "sucessfully updated"
      else
        render :new
      end
    else
      flash[:alert] = "Invalid Old paassword "
    end
  end

  private

  def password_params
    params.require(:user).permit(:password,:password_confirmation,:old_password) 
  end
end
