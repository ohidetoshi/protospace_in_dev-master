class CreateTagNames < ActiveRecord::Migration
  def change
    create_table :tag_names do |t|
      t.string :content, index: true
      t.timestamps null: false
    end
  end
end
