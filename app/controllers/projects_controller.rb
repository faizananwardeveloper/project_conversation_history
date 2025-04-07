class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @comment = Comment.new
    @status_options = [["Pending", "pending"], ["In Progress", "in_progress"], ["Completed", "completed"]]
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :status)
  end
end
