class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :city
      t.string :state
      t.string :zip
      t.string :project_type

      t.timestamps
    end
  end
end
