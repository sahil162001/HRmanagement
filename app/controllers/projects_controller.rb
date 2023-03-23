class ProjectsController < ApplicationController
  def index 
    @projects = Project.where(user_id:current_user.id)
  end
  
  def new
    @users = User.all
    @project = Project.new
  end 
  
  def create  
    # binding.pry
    if Project.create(project_params)
      redirect_to projects_path,notice:"profile updated"
    else
      render :new
    end 
  end
  # def destroy
  #   binding.pry
  #   @project = Project.find(params[:id])
  #   @project.destroy
  #   redirect_to projects_path
  # end

  private 
  def project_params
    params.permit(:name,:discription,:user_id)
  end

end
