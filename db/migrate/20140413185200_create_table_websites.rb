class CreateTableWebsites < ActiveRecord::Migration
	def change
		create_table :websites do |w|
			w.string :people_name
			w.string :people_email
			w.string :website_description
			w.string :website_name
		end
	end
end