class AddIndexToTagNamesName < ActiveRecord::Migration
  def change
    add_index :tag_names, :name, unique: true
  end
end
