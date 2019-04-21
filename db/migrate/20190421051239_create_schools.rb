class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :recognized
      t.text :address
      t.integer :phone
      t.references :principal, foreign_key: true

      t.timestamps
    end
  end
end
