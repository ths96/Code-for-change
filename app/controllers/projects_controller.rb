class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
  end

  def edit
  end

  def update
    @project.update(project_params)
		redirect_to project_path(@project)
  end

  def destroy
    @project.destroy
		redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :type, :description, :photo)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
