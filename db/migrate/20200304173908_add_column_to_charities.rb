class AddColumnToCharities < ActiveRecord::Migration[6.0]
  def change
    add_column :charities, :website, :string
    add_column :charities, :charity_registration_number, :string
    add_column :charities, :address, :string
    add_column :charities, :phone_number, :string
    add_column :charities, :email, :string
  end
end
