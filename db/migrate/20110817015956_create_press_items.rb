class CreatePressItems < ActiveRecord::Migration
  def change
    create_table :press_items do |t|
      t.string :title
      t.string :publication
      t.datetime :date
      t.string :link

      t.timestamps
    end
  end
end
