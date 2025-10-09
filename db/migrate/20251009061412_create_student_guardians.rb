class CreateStudentGuardians < ActiveRecord::Migration[8.0]
  def change
    create_table :student_guardians do |t|
      t.string :relationship
      t.references :student, null: false, foreign_key: true
      t.references :guardian, null: false, foreign_key: true

      t.timestamps
    end
  end
end
