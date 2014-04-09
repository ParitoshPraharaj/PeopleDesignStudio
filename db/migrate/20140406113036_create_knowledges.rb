class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.integer :Knowledge_Id
      t.integer :World_Id

      t.timestamps
    end
  end
end
