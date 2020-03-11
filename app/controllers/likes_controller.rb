class LikesController < ApplicationController

  def create
    @like = Like.new(project_id: params[:project_id], user_id: current_user.id)
    @like.save
    if params[:page] == 'show'
      redirect_to project_path(params[:project_id])
    elsif params[:page] == 'profile'
      redirect_to profile_path(current_user.id)
    else
      redirect_to projects_path
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    if params[:page] == 'profile'
      redirect_to profile_path(current_user.id)
    elsif params[:project_id].present?
      redirect_to project_path(params[:project_id])
    else
      redirect_to projects_path
    end
  end
end
