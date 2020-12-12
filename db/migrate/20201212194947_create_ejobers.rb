class CreateEjobers < ActiveRecord::Migration[6.0]
  def change
    create_table :ejobers do |t|
      t.string :name
      t.string :surname
      t.date :birthday
      t.string :gender
      t.string :ethnic
      t.string :deficiency
      t.string :skills
      t.text :release
      t.string :position
      t.string :address
      t.integer :cpf
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
