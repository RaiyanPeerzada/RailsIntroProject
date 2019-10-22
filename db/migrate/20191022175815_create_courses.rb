class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course_number
      t.string :title
      t.string :description
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
