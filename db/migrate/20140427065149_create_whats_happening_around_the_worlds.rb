class CreateWhatsHappeningAroundTheWorlds < ActiveRecord::Migration
  def change
    create_table :whats_happening_around_the_worlds do |t|
	  t.text :title
	  t.text :description
	  t.text :image
      	  
      t.timestamps
    end
  end
end
