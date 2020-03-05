class CharitiesController < ApplicationController
  before_action :find_charity, only: [:edit, :update, :destroy, :show]

  def new
    @charity = Charity.new
  end

  def create
    user = current_user
    @charity = Charity.new(charity_params)
    @charity.user_id = user.id
    if @charity.save
      redirect_to charity_path(@charity)
    else
      redirect_to  new_charity_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @charity.update(charity_params)
    redirect_to project_path(@charity)
  end

  def destroy
    @charity.destroy
    redirect_to charities_path
  end

  private

  def charity_params
    params.require(:charity).permit(:name, :description, :location)
  end
   def find_charity
    @charity = Charity.find(params[:id])
  end


end
