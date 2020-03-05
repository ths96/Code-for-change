class BookingsController < ApplicationController

	def create
		@booking = Booking.new(project_id: params[:project_id], user_id: current_user.id)
	end

	def show
		@booking = Booking.find(params[:id])
		@user = @booking.user
		@project = @booking.project
		@collaboraters = @project.users
		@boards = trello_dashboard
	end 

	private

	def trello_dashboard
    if current_user.trello_token.present?
      url = "https://api.trello.com/1/members/me/boards?&key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
			
			boards = use_api(url)
      boards.map! do |board|
        board_url = "https://api.trello.com/1/boards/#{board['id']}?lists=open&list_fields=name&key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
        result = use_api(board_url)
        result['lists'].each do |list|
          list_url = "https://api.trello.com/1/lists/#{list['id']}/cards?key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
          list['cards'] = use_api(list_url)
        end
      end
      boards.flatten
    end
  end
  
  def use_api(url)
    json = RestClient.get(url)
    JSON.parse(json)
  end

  def profile
    @user = current_user
  end
	# def booking_params
	# 	params.require(:booking).permit(:project_id)
	# end
end
