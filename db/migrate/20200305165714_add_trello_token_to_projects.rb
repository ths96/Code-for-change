class AddTrelloTokenToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :trello_token, :string
  end
end
