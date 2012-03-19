class CreateNarratives < ActiveRecord::Migration
  def change
    create_table :narratives do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
