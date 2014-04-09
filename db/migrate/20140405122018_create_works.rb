class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer :people_id
      t.integer :project_id
      t.text :work
      t.boolean :completed

      t.timestamps
    end
  end
end
