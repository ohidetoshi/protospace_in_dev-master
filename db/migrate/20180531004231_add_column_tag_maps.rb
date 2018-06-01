class AddColumnTagMaps < ActiveRecord::Migration
  def change
    create_table :column_tag_maps do |t|
     t.references :protptype
     t.references :tags_name
   end
  end
end
