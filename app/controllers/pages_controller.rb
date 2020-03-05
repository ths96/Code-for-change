class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    if current_user.trello_token.present?
      url = "https://api.trello.com/1/members/me/boards?&key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
      @boards = use_api(url)
      @boards.map! do |board|
        board_url = "https://api.trello.com/1/boards/#{board['id']}?lists=open&list_fields=name&key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
        result = use_api(board_url)
        result['lists'].each do |list|
          list_url = "https://api.trello.com/1/lists/#{list['id']}/cards?key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
          list['cards'] = use_api(list_url)
        end
      end
      @tasks = @boards.flatten
    end
  end
  
  def use_api(url)
    json = RestClient.get(url)
    JSON.parse(json)
  end

  def profile
    @user = current_user
    @pending = @user.bookings.where(status: 'pending')
    @current = @user.bookings.where(status: 'accepted')
    @past = @user.bookings.where(status: 'completed')
  end

end
