class CreateTablePeople < ActiveRecord::Migration

=begin	def create_table :people, id: false do |people|
		people.primary_key :people_id
		#people.integer :people_id, :primary_key, :auto_increment
		people.text :name
		people.string :password
		people.string :password_digest
=end	end

end