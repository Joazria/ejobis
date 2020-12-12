class AddNameToEjobis < ActiveRecord::Migration[6.0]
  def change
    add_column :ejobis, :name, :string
  end
end
