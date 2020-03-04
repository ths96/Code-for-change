class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    if current_user.trello_token.present?
      url = "https://api.trello.com/1/members/me/boards?&key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
      response = RestClient.get(url)
      @boards = JSON.parse(response)
      @boards.map! do |board|
        board_url = "https://api.trello.com/1/boards/#{board['id']}?lists=open&list_fields=name&key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
        board_response = RestClient.get(board_url)
        result = JSON.parse(board_response)
        result['lists'].each do |list|
          list_url = "https://api.trello.com/1/lists/#{list['id']}/cards?key=#{ENV['TRELLO_API_KEY']}&token=#{current_user.trello_token}"
          list_response = RestClient.get(list_url)
          list['cards'] = JSON.parse(list_response)
        end
      end
      @boards.flatten!
    end

  def profile
    @user = current_user
  end
    
end
