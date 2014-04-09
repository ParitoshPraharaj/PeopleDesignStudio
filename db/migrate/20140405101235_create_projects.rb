class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :people_id
      t.text :name
      t.text :description
      t.text :extra_information

      t.timestamps
    end
  end
end
