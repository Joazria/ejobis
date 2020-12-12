class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.text :release
      t.string :email
      t.string :phone
      t.string :address
      t.integer :cnpj
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
