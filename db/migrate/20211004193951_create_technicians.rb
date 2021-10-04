class CreateTechnicians < ActiveRecord::Migration[5.2]
  def change
    create_table :technicians do |t|
      t.string :name
      t.integer :rut
      t.date :birth

      t.timestamps
    end
  end
end
