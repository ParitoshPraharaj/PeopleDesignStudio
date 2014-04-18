class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :content
      t.text :files
	  t.references :people

      t.timestamps
    end
  end
end
