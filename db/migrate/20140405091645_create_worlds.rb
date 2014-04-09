class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.text :name
      t.text :email
      t.text :password_digest

      t.timestamps
    end
  end
end
