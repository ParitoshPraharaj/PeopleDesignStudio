class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :work_id
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
