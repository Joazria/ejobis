class AddStaffsToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :name, :string
    add_column :companies, :linkedin, :string
    add_column :companies, :city, :string
    add_column :companies, :state, :string
  end
end
