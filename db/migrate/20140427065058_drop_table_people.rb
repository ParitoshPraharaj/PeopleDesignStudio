class DropTablePeople < ActiveRecord::Migration
  def change
	drop_table :person
  end
end
