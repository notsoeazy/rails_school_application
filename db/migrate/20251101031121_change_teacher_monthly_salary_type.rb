class ChangeTeacherMonthlySalaryType < ActiveRecord::Migration[8.0]
  def change
    change_column :teachers, :monthly_salary, :float, default: 0
  end
end
