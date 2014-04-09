class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :world_id
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
