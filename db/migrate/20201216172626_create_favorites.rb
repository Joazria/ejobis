class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :company, null: false, foreign_key: true
      t.references :ejober, null: false, foreign_key: true

      t.timestamps
    end
  end
end
