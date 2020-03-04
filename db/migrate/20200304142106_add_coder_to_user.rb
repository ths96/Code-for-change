class AddCoderToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :coder, :boolean
  end
end
