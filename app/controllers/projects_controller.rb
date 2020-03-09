class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query \
      OR project_description ILIKE :query \
      OR location ILIKE :query \
      OR category @@ :query"
      @projects = Project.where(sql_query, query: "%#{params[:query]}%")
    else
      @projects = Project.all
    end
  end

  def show
  end

  def new
    unless current_user.charity
      redirect_to root_path
      flash[:alert] = "You aint no charity"
    end

    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.charity = current_user.charity
    @project.deadline = "#{project_params['deadline(3i)']}/#{project_params['deadline(2i)']}/#{project_params['deadline(1i)']}"
    if @project.save!
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(project_params)
		redirect_to project_path(@project)
  end

  def destroy
    charity = @project.charity
    @project.destroy
		redirect_to charity_path(charity)
  end

  private

  def project_params
    params.require(:project).permit(:name, :category, :project_description, :location, :trello_token, :photo, :deadline)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
