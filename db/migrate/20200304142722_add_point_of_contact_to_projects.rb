class AddPointOfContactToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :point_of_contact, :string
  end
end
