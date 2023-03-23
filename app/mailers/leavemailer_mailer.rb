class LeavemailerMailer < ApplicationMailer
  def new_leave_email 
    @leave = params[:leave]
    mail(to: @leave.email, subject: "You got a new mail!")
  end
end
