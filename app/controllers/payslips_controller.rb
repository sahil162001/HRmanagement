class PayslipsController < ApplicationController
  def index
    binding.pry
    @pays = Payslip.where(user_id:current_user.id)
  end

  def new
    @users = User.all
    @pay = Payslip.new
  end 
  def create
    # binding.pry
    # @user = User.find(params[:payslip][:user_id])
    if Payslip.create(pay_params)
     redirect_to payslips_path, notice: "sucessfully created"
    else 
     render :new
    end
 
   end
   private 
   def pay_params  
     params.require(:payslip).permit(:amount,:credit,:user_id)
   end
end
