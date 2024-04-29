class CreateStudentTeacherRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :student_teacher_relationships do |t|
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
