class AddColumnToTugNames < ActiveRecord::Migration
  def up
    remove_column :tag_names, :content
  end

  def down
    add_column :tag_names, :name
 end
end
