class CreateMarketings < ActiveRecord::Migration
  def change
    create_table :marketings do |t|
      t.text :Name
      t.text :Business_Name
      t.text :Email
      t.text :Phone_Number
      t.text :Address
      t.text :url

      t.timestamps
    end
  end
end
