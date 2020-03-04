class AddColumnsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :charity_description, :string
    add_column :projects, :project_description, :string
    add_column :projects, :website, :string
    add_column :projects, :location, :string
  end
end
