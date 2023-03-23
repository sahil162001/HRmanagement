class SignUpMailer < ApplicationMailer
  def new_leave_email 
    @user = params[:user]
    mail(to: @user.email, subject: "You got a new mail!")
  end
end
