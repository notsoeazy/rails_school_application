class CreateSections < ActiveRecord::Migration[8.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :room
      t.string :time_slot
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
