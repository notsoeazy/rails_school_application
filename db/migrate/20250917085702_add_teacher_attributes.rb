class AddTeacherAttributes < ActiveRecord::Migration[8.0]
  def change
    add_column :teachers, :number_of_units, :integer, default: 0
    add_column :teachers, :monthly_salary, :integer, default: 0
  end
end
