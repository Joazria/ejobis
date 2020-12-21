class CreateEjobiValidations < ActiveRecord::Migration[6.0]
  def change
    create_table :ejobi_validations do |t|
      t.references :ejobi, null: false, foreign_key: true
      t.references :ejober, null: false, foreign_key: true
      t.string :apply
      t.string :approve

      t.timestamps
    end
  end
end
