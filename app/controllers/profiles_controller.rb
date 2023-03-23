class ProfilesController < ApplicationController
  before_action :require_user_logged_in!
  def index
   
    @profile = current_user.profile

  end

  def new 
    @profile =Profile.new
 
  end

  def edit 

  end

  def create 
    @profile = Profile.new(profiles_params.merge!({user_id: current_user.id}))
    if @profile.save
      redirect_to profiles_path,notice:"profile updated"
    else
      flash[:alert] = "invalid"
      render :new
    end 
  end
  def update 
   
    if Current.user.profile.update(update_params)
      redirect_to profiles_path, notice:"profile updated"
    else
    render :edit
    end
  end

  private 
  def profiles_params
    params.permit(:first_name,:last_name,:address,:dob,:phone,:gender)
    
  end

  def update_params
    params.require(:profile).permit(:first_name,:last_name,:address,:dob,:phone,:gender,:skill)
  end


end
