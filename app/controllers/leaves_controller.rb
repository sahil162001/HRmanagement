class LeavesController < ApplicationController
  # before_action :require_user_logged_in!
  #number:params[:number],user_id:current_user.id
  def index
    @leaves = Leave.all
    @total = 10
  end

  def new 
    @leave = Leave.new
  end
  
  def create 
    
    @leave = Leave.new( leaves_params.merge!({user_id: current_user.id}))
   if @leave.save 
      LeavemailerMailer.with(leave:@leave).new_leave_email.deliver_now!
      redirect_to leaves_path, notice: " Applied sucessfully"
    else
      flash[:alert] = "insufficent leaves "
    end
  
  end

  private 

  def leaves_params 
    params.permit(:number,:user_id,:start_at,:end_at,:email,:session,:reason)
  end
end
