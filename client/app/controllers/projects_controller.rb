class ProjectsController < ApplicationController
	def index
    @projects = Project.all
	end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def new 
    @project = Project.new
  end
  
  def create
    @project= Project.new(params[:project].permit(:title,:abstract,:client))
    if @project.save
      redirect_to projects_path, :notice => "Your project was succesfully saved"
    else
      render "new"
    end
    
  end
  
  def edit 
    @project = Project.find(params[:id])  
    
  end
  
  def update
    @project = Project.find(params[:id])
    
    if @project.update_attributes(params[:project].permit(:title,:client,:abstract))
      redirect_to projects_path, :notice => "Your project was succesfully updated"
    else
      render "edit"

  end
  
end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path, :notice => "Your project has been deleted"
  end
  
end

