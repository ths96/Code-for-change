class AddColumnToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :deadline, :string
  end
end
