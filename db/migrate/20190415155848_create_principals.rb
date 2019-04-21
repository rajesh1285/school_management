class CreatePrincipals < ActiveRecord::Migration[6.0]
  def change
    create_table :principals do |t|
      t.string :name
      t.string :education
      t.string :sspecialization
      t.string :gender
      t.integer :phone

      t.timestamps
    end
  end
end
