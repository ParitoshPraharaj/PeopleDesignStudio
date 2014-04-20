class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :opinion
      t.references :blog, index: true

      t.timestamps
    end
  end
end
