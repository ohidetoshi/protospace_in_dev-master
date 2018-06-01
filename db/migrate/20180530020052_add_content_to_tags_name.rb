class AddContentToTagsName < ActiveRecord::Migration
  def change
    add_column :tags_names, :Content, :string
  end
end
