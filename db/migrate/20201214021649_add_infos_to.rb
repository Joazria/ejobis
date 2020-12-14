class AddInfosTo < ActiveRecord::Migration[6.0]
  def change
       add_column :ejobers, :city, :string
      add_column :ejobers, :state, :string
      add_column :ejobers, :phone, :string

  end
end
