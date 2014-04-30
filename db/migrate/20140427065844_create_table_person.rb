class CreateTablePerson < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :name
	  t.text :email, index: true
	  t.text :password
	  t.text :image
	  
	  t.timestamps
    end
  end
end
