class CreateIndexonNotesandBlog < ActiveRecord::Migration
  def change
    
	add_column :notes, :slug, :text
	add_index :notes, :slug, unique: true
	
    
  end
end
