class CreateEjobis < ActiveRecord::Migration[6.0]
  def change
    create_table :ejobis do |t|
      t.references :company, null: false, foreign_key: true
      t.string :position
      t.text :release
      t.date :start_date
      t.date :end_date
      t.date :start_time
      t.date :end_time
      t.integer :fee
      t.string :city
      t.string :state
      t.string :address

      t.timestamps
    end
  end
end
