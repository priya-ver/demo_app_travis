class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to root_path, notice: 'Project created!'
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
