class DropTablePerson < ActiveRecord::Migration
  def change
	drop_table :person
  end
end
