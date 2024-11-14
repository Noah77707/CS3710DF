class CreateProjectsToManies < ActiveRecord::Migration[7.1]
  def change
    create_table :projects_to_manies do |t|
      t.string :title
      t.string :description
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
