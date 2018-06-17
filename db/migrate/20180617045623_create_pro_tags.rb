class CreateProTags < ActiveRecord::Migration
  def change
    create_table :pro_tags do |t|
      t.references :prototype, foreign_key: true, index: true
      t.references :tag_name, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
