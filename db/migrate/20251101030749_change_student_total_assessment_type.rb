class ChangeStudentTotalAssessmentType < ActiveRecord::Migration[8.0]
  def change
    change_column :students, :total_assessment, :float, default: 0
  end
end
