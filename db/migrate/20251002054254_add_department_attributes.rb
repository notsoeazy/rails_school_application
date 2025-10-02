class AddDepartmentAttributes < ActiveRecord::Migration[8.0]
  def change
    add_column :departments, :employee_count, :integer, default: 0
    add_column :departments, :student_count, :integer, default: 0
  end
end
