class CreateThankYouEmailMessages < ActiveRecord::Migration
  def change
    create_table :thank_you_email_messages do |t|
      t.text :message
	  t.index :message	  
		
      t.timestamps
    end
  end
end
