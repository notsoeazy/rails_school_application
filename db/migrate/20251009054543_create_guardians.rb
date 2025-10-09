class CreateGuardians < ActiveRecord::Migration[8.0]
  def change
    create_table :guardians do |t|
      t.string :name
      t.string :email_address
      t.string :contact_number
      t.integer :number_of_students

      t.timestamps
    end
  end
end
