class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.text :address
      t.integer :phone
      t.string :gender
      t.integer :school_id

      t.timestamps
    end
  end
end
