class CreateEngineersBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :engineers_banks do |t|
      t.references :engineer, foreign_key: true
      t.references :bank, foreign_key: true

      t.timestamps
    end
  end
end
