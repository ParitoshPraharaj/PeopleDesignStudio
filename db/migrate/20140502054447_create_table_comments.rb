class CreateTableComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :name
      t.text :email
      t.text :comment
	  
	  t.references :blog, index: true
    end
  end
end
