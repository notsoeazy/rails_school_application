class AddStudentNumberOfGuardiansAttribute < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :number_of_guardians, :integer, default: 0
  end
end
