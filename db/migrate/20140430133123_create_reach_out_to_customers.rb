class CreateReachOutToCustomers < ActiveRecord::Migration
  def change
    create_table :reach_out_to_customers do |t|
      t.text :to
      t.text :email
      t.text :image

      t.timestamps
    end
  end
end
