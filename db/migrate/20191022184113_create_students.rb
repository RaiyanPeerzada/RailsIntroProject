class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :degree
      t.references :university, null: false, foreign_key: true

      t.timestamps
    end
  end
end
