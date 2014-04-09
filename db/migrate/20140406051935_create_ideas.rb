class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :People_Id
      t.string :Idea

      t.timestamps
    end
  end
end
