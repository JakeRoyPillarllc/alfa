class CreateProjectTypesProjects < ActiveRecord::Migration
  def up
    create_table :project_types_projects, :id=>false  do |t|
      t.integer :project_id
      t.integer :project_type_id

      t.timestamps
    end
  end
  def down
    drop_table :project_types_projects
  end
end
