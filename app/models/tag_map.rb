class CreateProTags < ActiveRecord::Migration
  def change
    create_table :tag_maps do |t|
      t.references :tags_name, foreign_key: true
      t.references :prototype, foreign_key: true
      t.timestamps null: false
    end
  end
end
