class AddStudentAttributes < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :total_assessment, :integer, default: 0
  end
end
