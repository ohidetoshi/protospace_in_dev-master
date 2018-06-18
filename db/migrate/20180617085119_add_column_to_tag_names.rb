class AddColumnToTagNames < ActiveRecord::Migration
  def change
    add_column :tag_names, :name, :string
  end
end
