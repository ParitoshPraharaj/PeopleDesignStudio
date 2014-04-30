class AddSlugToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :slug, :text
  end
end
