class AddOtherAttributes < ActiveRecord::Migration[8.0]
  def change
    add_column :sections, :number_of_students, :integer, default: 0
    add_column :students, :number_of_units, :integer, default: 0
    add_column :subjects, :number_of_units, :integer, default: 0

    # remove_column :subjects, number_of_units, :integer, default: 0
    # change_column :subjects, number_of_units, :float, default: 0

    # docker compose run --rm web rails db:migrate
  end
end
