class CreateTablePeople < ActiveRecord::Migration

	def change
		create_table :people do |objPeopleTable|
			objPeopleTable.text :name
			objPeopleTable.text :email
			objPeopleTable.text :password_digest
			objPeopleTable.timestamps
		end
	end
	
end