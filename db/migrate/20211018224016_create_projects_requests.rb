class CreateProjectsRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_requests do |t|
      t.references :project, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
