class CreateRequestsEngineers < ActiveRecord::Migration[5.2]
  def change
    create_table :requests_engineers do |t|
      t.references :request, foreign_key: true
      t.references :engineer, foreign_key: true

      t.timestamps
    end
  end
end
