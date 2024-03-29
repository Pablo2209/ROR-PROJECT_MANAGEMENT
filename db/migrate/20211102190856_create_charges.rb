class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.string :uid, limit: 50
      t.integer :status, default: 0
      t.integer :payment_method, default: 0
      t.decimal :amount, default: 0
      t.text :error_message
      t.json :response_data

      t.timestamps
    end
  end
end
