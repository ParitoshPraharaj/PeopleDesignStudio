class AddSubjectToReachOutToCustomers < ActiveRecord::Migration
  def change
    add_column :reach_out_to_customers, :subject, :text
  end
end
