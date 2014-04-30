class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :name
      t.text :content
      t.integer :blog_id

      t.timestamps
    end
  end
end
