class CreateTagMaps < ActiveRecord::Migration
  def change
    create_table :tag_maps do |t|

      t.timestamps null: false
    end
  end
end
