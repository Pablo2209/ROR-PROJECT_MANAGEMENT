class CreateBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :acc_type
      t.integer :number

      t.timestamps
    end
  end
end
