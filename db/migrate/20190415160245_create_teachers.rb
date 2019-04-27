class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :subject
      t.string :specialization
      t.string :education
      t.integer :phone
      t.string :gender
      t.integer :school_id

      t.timestamps
    end
  end
end
