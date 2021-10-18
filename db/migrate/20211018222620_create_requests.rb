class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :type
      t.date :d_day
      t.string :city
      t.integer :n_day
      t.float :viatic
      t.boolean :state

      t.timestamps
    end
  end
end
