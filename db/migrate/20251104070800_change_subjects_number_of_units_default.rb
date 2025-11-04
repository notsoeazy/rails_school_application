class ChangeSubjectsNumberOfUnitsDefault < ActiveRecord::Migration[8.0]
  def change
    change_column_default :subjects, :number_of_units, from: 0, to: nil
  end
end